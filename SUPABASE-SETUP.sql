-- Transalp Secure PWA v9
-- Einmal im Supabase SQL Editor ausführen.
-- Das Modell ist "Local first": IndexedDB bleibt Primärspeicher.
-- Supabase speichert nur clientseitig AES-GCM-verschlüsselte Werte.

create table if not exists public.transalp_sync (
  sync_id text not null,
  item_key text not null,
  ciphertext text not null,
  iv text not null,
  updated_at timestamptz not null,
  token_hash text not null,
  device_id text,
  primary key (sync_id, item_key)
);

create index if not exists transalp_sync_updated_idx
  on public.transalp_sync (sync_id, updated_at);

alter table public.transalp_sync enable row level security;

-- Direkter Tabellenzugriff aus Browser-Clients ist absichtlich gesperrt.
revoke all on table public.transalp_sync from anon, authenticated;

create or replace function public.transalp_sync_pull(
  p_sync_id text,
  p_token_hash text
)
returns table (
  item_key text,
  ciphertext text,
  iv text,
  updated_at timestamptz,
  device_id text
)
language sql
security definer
set search_path = public
as $$
  select s.item_key, s.ciphertext, s.iv, s.updated_at, s.device_id
  from public.transalp_sync s
  where s.sync_id = p_sync_id
    and s.token_hash = p_token_hash
  order by s.updated_at asc;
$$;

create or replace function public.transalp_sync_upsert(
  p_sync_id text,
  p_token_hash text,
  p_item_key text,
  p_ciphertext text,
  p_iv text,
  p_updated_at timestamptz,
  p_device_id text default null
)
returns void
language plpgsql
security definer
set search_path = public
as $$
declare
  v_token text;
begin
  if p_sync_id is null or length(p_sync_id) < 16 then
    raise exception 'invalid sync id';
  end if;

  if p_token_hash is null or length(p_token_hash) < 32 then
    raise exception 'invalid sync token';
  end if;

  if not (
    p_item_key like 'levo-transalp-2026:%'
    or p_item_key like 'levo-service-v1:%'
  ) then
    raise exception 'invalid item key';
  end if;

  -- Ein bereits angelegter Sync-Bereich kann nur mit demselben Bearer-Token
  -- beschrieben werden. Das Token selbst wird nicht gespeichert, nur der Hash.
  select s.token_hash
    into v_token
    from public.transalp_sync s
   where s.sync_id = p_sync_id
   limit 1;

  if v_token is not null and v_token <> p_token_hash then
    raise exception 'invalid sync token';
  end if;

  insert into public.transalp_sync (
    sync_id,item_key,ciphertext,iv,updated_at,token_hash,device_id
  )
  values (
    p_sync_id,p_item_key,p_ciphertext,p_iv,p_updated_at,p_token_hash,p_device_id
  )
  on conflict (sync_id,item_key)
  do update set
    ciphertext = excluded.ciphertext,
    iv = excluded.iv,
    updated_at = excluded.updated_at,
    token_hash = excluded.token_hash,
    device_id = excluded.device_id
  where public.transalp_sync.updated_at < excluded.updated_at
    and public.transalp_sync.token_hash = excluded.token_hash;
end;
$$;

revoke all on function public.transalp_sync_pull(text,text) from public;
revoke all on function public.transalp_sync_upsert(text,text,text,text,text,timestamptz,text) from public;

grant execute on function public.transalp_sync_pull(text,text) to anon, authenticated;
grant execute on function public.transalp_sync_upsert(text,text,text,text,text,timestamptz,text) to anon, authenticated;

-- Keine SELECT/INSERT/UPDATE/DELETE-Policies anlegen.
-- Der Browser arbeitet ausschließlich über die beiden SECURITY DEFINER RPCs.
