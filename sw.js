const CACHE="transalp-secure-v67-20260829";
const APP=["./index.html","./manifest.webmanifest","./icon-192.png","./icon-512.png","./crypto.json","./tour.enc.json","./wartung.enc.json","./sync-config.js","./northstar-ride-analysis.schema.json","./northstar-ride-analysis.example.json",
  "./tour-01-arlberg.jpg",
  "./tour-02-silvretta.jpg",
  "./tour-03-val-muestair.jpg",
  "./tour-04-livigno.jpg",
  "./tour-05-bernina.jpg",
  "./tour-06-bergell.jpg"];

self.addEventListener("install",event=>event.waitUntil(
  caches.open(CACHE).then(cache=>cache.addAll(APP)).then(()=>self.skipWaiting())
));

self.addEventListener("activate",event=>event.waitUntil(
  caches.keys()
    .then(keys=>Promise.all(keys.filter(k=>k.startsWith("transalp-")&&k!==CACHE).map(k=>caches.delete(k))))
    .then(()=>self.clients.claim())
));

async function networkFirst(request,fallback){
  try{
    const response=await fetch(request,{cache:"no-store"});
    if(response&&response.ok){
      const copy=response.clone();
      caches.open(CACHE).then(c=>c.put(request,copy));
    }
    return response;
  }catch(_){
    return (await caches.match(request)) || (fallback ? caches.match(fallback) : Response.error());
  }
}

self.addEventListener("fetch",event=>{
  if(event.request.method!=="GET")return;
  const url=new URL(event.request.url);
  if(url.origin!==self.location.origin)return; // Open-Meteo must stay a real network request.

  if(event.request.mode==="navigate" || /\/(?:index\.html|crypto\.json|tour\.enc\.json|wartung\.enc\.json|sync-config\.js)$/.test(url.pathname)){
    event.respondWith(networkFirst(event.request,"./index.html"));
    return;
  }

  event.respondWith(
    caches.match(event.request).then(cached=>cached || fetch(event.request).then(response=>{
      if(response&&response.ok){
        const copy=response.clone();
        caches.open(CACHE).then(c=>c.put(event.request,copy));
      }
      return response;
    }))
  );
});
