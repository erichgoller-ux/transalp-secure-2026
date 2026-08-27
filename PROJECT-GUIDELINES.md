# Transalp PWA · Projekt-Guidelines

Diese Regeln sind ab v58 die verbindliche Arbeitsgrundlage für Änderungen an der Transalp-PWA.

## 1. Reihenfolge bei Änderungen
1. Struktur klären.
2. Funktion sichern.
3. Design vereinheitlichen.
4. Erst danach Feinschliff.

Keine Änderung an Informationsarchitektur, Design und technischer Navigation gleichzeitig, wenn sie sich trennen lässt.

## 2. Systemweite Konsistenz
- Gleichartige Funktionen verwenden dieselbe Komponente und dieselbe visuelle Sprache.
- Eine lokale UI-Änderung wird immer auf gleiche oder verwandte Komponenten in der gesamten App geprüft.
- Verbesserungen sind erst fertig, wenn sie das Gesamtsystem konsistenter machen.
- Nach stabilem Stand gezielte Änderungen bevorzugen; keine unnötige Architekturänderung.

## 3. Single Source of Truth
- Ein Wert hat genau eine fachliche Quelle.
- Plan, Ist, FIT-abgeleitete Werte und gelernte Prognosen bleiben getrennte Datenzustände.
- FIT-Auswertungen ergänzen und validieren den Plan; sie überschreiben den ursprünglichen Startplan nicht stillschweigend.
- Manuelle Eingaben nur dort, wo FIT oder andere vorhandene Daten die Information nicht bereits liefern.

## 4. Mobile und Desktop gleichwertig
- iPhone/Safari ist ein eigener Testfall, nicht nur eine kleinere Desktop-Ansicht.
- Mindest-Testbreiten: 390, 430, 768, 1024, 1440 und 1920 px.
- Kein horizontaler Seiten-Overflow. Nur ausdrücklich horizontale Navigationsleisten dürfen horizontal scrollen.
- Sticky Header, zweites Menü und iframe/Shell werden als getrennte Scroll-Kontexte geprüft.

## 5. Visuelle Grammatik
- Gleiche Funktion = gleiche Form.
- Normale Kontaktaktionen sind grün; Rot ist echten Notrufen vorbehalten.
- Whitespace muss der Gliederung dienen und darf keine unbeabsichtigten großen Leerflächen erzeugen.
- Goldener Schnitt ist nur eine Hierarchie-Heuristik; Lesbarkeit und Responsive-Verhalten haben Vorrang.
- Nicht jede Information braucht einen Button. Kleine kontextbezogene Aktionen sind oft besser.

## 6. Datenerfassung
Nur Daten erfassen, die später eine Entscheidung, Auswertung oder Prognose verbessern.

Tagesworkflow:
- morgens Plan, Wetter, Variante und Startsetup prüfen;
- unterwegs nur relevante Istwerte erfassen;
- abends Tagesabschluss und FIT-Auswertung;
- daraus Scorecard und Lernfaktor aktualisieren.

Doppelte Formulare oder parallele Mechanismen für denselben Zweck sind zu vermeiden.

## 7. Privacy & Deployment
- `tour.html` und `wartung.html` sind Arbeitsdateien und dürfen nicht im Deployment-ZIP liegen.
- Deployment enthält ausschließlich `tour.enc.json` und `wartung.enc.json`.
- Entsperrcode und andere private Schlüsseldateien dürfen nie in Repository oder Deployment-ZIP gelangen.
- Verschlüsselung, Offline-Cache, Persistenz und Restore werden vor jedem Release geprüft.

## 8. Release-Prozess
Vor jeder Änderung:
1. Ausgangsversion eindeutig festlegen.
2. Betroffene gemeinsame Komponenten identifizieren.
3. Invarianten definieren.
4. Möglichst zentral statt lokal implementieren.
5. Desktop und iPhone prüfen.
6. Navigation, Scrollen und Overflow prüfen.
7. Persistenz und bestehende Funktionen prüfen.
8. Syntax- und Integritätstests ausführen.
9. Version und Service-Worker-Cache erhöhen.
10. Deployment-Paket gegen `RELEASE-MANIFEST.json` prüfen.
11. Erst danach ZIP ausliefern.

## 9. Release-Invarianten
- Alle globalen Buttons öffnen die richtige Ansicht an der richtigen Position.
- Hauptnavigation bleibt erreichbar.
- Aktiver Haupt- und Untermenüstatus entspricht dem sichtbaren Ziel.
- Ziel-IDs existieren genau einmal.
- Keine doppelten Aktionsicons.
- Bilder und Formulare überschreiten auf iPhone nicht den Viewport.
- IndexedDB-/localStorage-Schlüssel bleiben kompatibel.
- Encrypted Payloads lassen sich mit dem bestehenden Entsperrcode entschlüsseln.
- Service Worker verwendet die aktuelle Release-Version.
- Keine privaten Klartextinhalte im Deployment.

## 10. Regressionen werden zu Tests
Jede gefundene Regression wird in `QA-REGRESSION-CHECKLIST.md` oder einem automatisierten QA-Test festgehalten, damit derselbe Fehler nicht erneut unbemerkt ausgeliefert wird.
