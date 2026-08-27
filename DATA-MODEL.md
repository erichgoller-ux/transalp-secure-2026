# Transalp PWA · Datenmodell

## Datenzustände
Die App trennt vier Zustände ausdrücklich:

1. **Plan** – ursprüngliche Tour-, Setup- und Prognosewerte.
2. **Ist** – manuell erfasste reale Werte des Tages.
3. **FIT-abgeleitet** – aus der Specialized-FIT-Datei analysierte Daten.
4. **Gelernt** – aus mehreren realen Tagen abgeleitete Anpassung für spätere Prognosen.

Ein späterer Zustand überschreibt einen früheren nicht stillschweigend.

## Tourdaten
Typische Inhalte:
- gewählte Variante;
- reale Distanz und Höhenmeter;
- Start-, Stützstellen- und Zielakku;
- tatsächlicher Ladegewinn;
- Tagesnotiz;
- Setup-Änderung und Wirkung;
- FIT-Analyse;
- Prognoseabweichung und Lernfaktor.

## FIT
Specialized ist die Master-Aufzeichnung der Fahrt. FIT-Daten können Route, Zeit, Leistung, Motor-/Supportinformationen und weitere verfügbare Felder liefern. Nicht verfügbare Felder werden nicht erfunden.

## Persistenz
- IndexedDB: `levo-transalp-2026-offline`, Store `kv`.
- Tour-Präfix: `levo-transalp-2026:`.
- Wartungs-Präfix: `levo-service-v1:`.
- `localStorage` dient als Mirror/Fallback für kompatible Werte.
- Bestehende Schlüssel werden bei UI-Änderungen nicht ohne Migration umbenannt.

## Backup und Sync
- JSON-Gesamtsicherung bleibt zusätzliche Notfallsicherung.
- Northstar/Supabase-Sync arbeitet verschlüsselt und local-first.
- Offline-Nutzung muss ohne Cloud-Verbindung weiter funktionieren.

## Verschlüsselte Inhalte
- Server/Repository: `tour.enc.json` und `wartung.enc.json`.
- Browser: Entschlüsselung lokal nach Eingabe des privaten Codes.
- Klartext-`tour.html` und `wartung.html` sind ausschließlich Build-Artefakte und nicht Teil des Deployments.

## Bilder
Dokumentationsbilder werden lokal persistent gespeichert und bei Bedarf komprimiert. Sie gehören zur Rückbau-/Wartungsdokumentation und dürfen bestehende Datenbank-Schlüssel nicht brechen.
