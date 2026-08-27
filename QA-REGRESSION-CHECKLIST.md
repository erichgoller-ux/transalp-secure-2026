# Transalp PWA – Regressionstest-Matrix

Diese Matrix ist ab v50 Bestandteil jedes Releases. Eine Änderung an Navigation,
Responsive-CSS, Hero, Grid oder iframe/Shell gilt erst dann als freigabefähig,
wenn **alle** Punkte geprüft wurden.

## A. Viewports
- Desktop groß: 1440 × 900
- Desktop kompakt: 1024 × 768
- iPhone Standard: 390 × 844
- iPhone Max: 430 × 932

## B. Hauptseiten
Für jeden Viewport:
1. Tour
2. Vorbereitung
3. Gepäck
4. Tuning
5. Wartung
6. Daten
7. Tipps
8. Notfall

Je Seite prüfen:
- kein horizontaler Seiten-Scroll
- Inhalt hat konsistente Außenränder
- Hero/Headline nicht abgeschnitten
- Bilder bleiben innerhalb des Containers
- vertikales Scrollen funktioniert mit Maus/Trackpad bzw. Touch
- Hauptnavigation lässt sich vollständig erreichen
- zweites Menü lässt sich vollständig erreichen
- aktiver Button entspricht dem sichtbaren Kapitel
- Hauptseitenwechsel startet oben, Unterkapitelsprung am Ziel

## C. Scroll-Regressionen
### Desktop
- Mausrad über Inhalt → vertikal scrollt
- Mausrad über Hauptnavigation → vertikal scrollt weiter
- Mausrad über Untermenü → vertikal scrollt weiter
- Trackpad vertikal über beiden Navigationsleisten → Seite scrollt

### iPhone
- vertikaler Swipe über Inhalt → Seite scrollt
- horizontaler Swipe auf Hauptnavigation → nur Hauptnavigation scrollt
- horizontaler Swipe auf Untermenü → nur Untermenü scrollt
- vertikaler Swipe auf Navigationsleiste → darf Seiten-Scroll nicht blockieren
- kein horizontaler Swipe im normalen Content möglich

## D. Kritische Ansichten
- Tour → Tagesbriefings
- Tour → FIT-Auswertung
- Tour → Tagesabschluss
- Tour → Scorecard
- Vorbereitung → Reise
- Vorbereitung → Guides/Kontakte
- Gepäck → alle Unterkapitel
- Tuning → Reifen, Fahrwerk, Kennlinien, Akku-Modell
- Wartung → Vor dem Start, Werkzeug, Arbeitsplan, Drehmomente, Basissetup,
  Abschluss, Medien, Quellen
- Daten → Reiseunterlagen, Bike & Apps, Wetter & Sicherheit, Medien & Tools
- Notfall → Notruf, Versicherung, JobRad, Hotels, eigener Kontakt

## E. Daten-/Funktionsschutz
Vor Release:
- FIT-Import vorhanden
- Tour-Scorecard vorhanden
- Prognose-/Lernlogik vorhanden
- IndexedDB / lokaler Speicher unverändert
- Northstar/Supabase-Sync unverändert
- Service Worker und Offline-Cache syntaktisch gültig
- verschlüsselte tour.enc.json / wartung.enc.json erfolgreich entschlüsselbar
- keine privaten Entsperrcodes im Deployment-ZIP

## F. Kontaktfunktionen
- Veranstalter: Telefon, Mail, Website funktionieren
- Guide-Telefonfelder bleiben persistent
- Telefonicon ohne Nummer fokussiert das Eingabefeld
- Telefonicon mit Nummer öffnet tel:
- Notruf-/Versicherungs-/JobRad-Telefonlinks bleiben unverändert
- Mail-Links bleiben unverändert

## Freigaberegel
Kein Release nur aufgrund eines einzelnen Screenshots freigeben.
Mindestens die vier Viewportgrößen und alle acht Hauptseiten müssen in der
Regressionstest-Matrix grün sein.


## Regressionen, die ab v51 explizit geprüft werden
- Kein `scrollIntoView()` für das Zentrieren eines Navi-Buttons verwenden.
  Zulässig ist nur das Ändern von `scrollLeft` des konkreten Button-Streifens.
- `touch-action: pan-x` nicht auf horizontalen Navigationsleisten verwenden:
  vertikale Wischgesten müssen die Seite weiterhin scrollen können.
- Globaler Header und iframe sind getrennte Scroll-Kontexte. Auf Desktop muss
  vertikales Mausrad/Trackpad über der globalen Navigation an den aktiven
  Inhaltsframe weitergereicht werden.
- Zweite Navigationsebene: vertikales Mausrad über der Leiste muss die Seite
  scrollen; horizontales Trackpad/Wischen darf nur den Button-Streifen bewegen.
- Nach jedem Release: Breite/Scrollposition der Seite nach jedem Untermenü-Klick
  prüfen; `scrollLeft` des Dokuments muss 0 bleiben.


## Zusätzliche Interaktionsprüfung ab v52
- Aktiver Hauptnavigationsbutton wird innerhalb `.top-actions` sichtbar
  gemacht; dabei darf `document.scrollLeft` nicht verändert werden.
- Aktiver Untermenübutton wird ausschließlich über `scrollLeft` seines
  eigenen Button-Streifens sichtbar gemacht.
- Guide-Telefonicons referenzieren vorhandene Input-IDs und verwenden den
  lokal gespeicherten Feldwert.
- Persönlicher Notfallkontakt besitzt denselben dynamischen Telefonpfad.


## Sticky-/Scroll-Regressions ab v53
- Globales Hauptmenü bleibt im Shell-Header sichtbar.
- Zweite Navigationsebene scrollt zunächst mit dem jeweiligen Hero und bleibt danach bei `top:0` im Inhaltsframe sticky.
- Wartung: Fortschrittsleiste ist ausdrücklich **nicht** sticky; nur die Kapitel-Navigation.
- Kein `scrollIntoView()` für Kapitel- oder Anchor-Sprünge. Alle Sprünge verwenden `scrollTo({left:0})`.
- Keine `wheel`-Handler innerhalb der zweiten Navigationsebene, die `preventDefault()` verwenden.
- `html/body` im Inhalt verwenden `overflow-x: clip`, damit Sticky nicht durch einen künstlichen Scroll-Container zerstört wird.
- Nach Haupt- und Untermenü-Klick muss `contentWindow.scrollX === 0` bleiben.
- iPhone: vertikales Wischen über der horizontalen Buttonleiste muss die Seite scrollen; horizontales Wischen darf ausschließlich die Buttonleiste bewegen.
- Kontakticons: Emoji-Glyphen sind unzulässig; Telefon/Mail/Web werden als CSS-Masken gerendert. Rot nur für echte Notrufnummern.


## v54 · gezielte UI-Regressionsprüfung
- Quellen: keine verschachtelten schmalen Spalten; Quellencluster stehen untereinander,
  darin responsive Karten mit sinnvoller Mindestbreite.
- Desktop 1440/1024 px: Quellenkarten lesbar ohne extremen Zeilenumbruch.
- iPhone 390/430 px: Quellenkarten einspaltig, kein horizontaler Dokument-Overflow.
- Notrufkarten: Telefonnummer links, rotes Anrufsymbol rechts auf derselben Kopfhöhe.
- Normale Kontakt-Telefonicons bleiben grün; Rot ausschließlich bei echten Notrufen.


## v55 · Kontakt-Scorecards
- Hallesche und DRF: Veranstalter-Scorecard als visuelle Referenz.
- Hotels: Telefon, Website und Kartenaktion oben rechts; Adresse bleibt direkt lesbar.
- JobRad/ROLAND/assona: Kontaktaktionen oben rechts, Abläufe unverändert.
- Normale Kontaktaktionen grün; echte Notrufkarten bleiben rot.
- Desktop zweispaltig, Mobile einspaltig.


## v56 · Design-Konsistenz
- Kontakt-Scorecards: genau ein visuelles Icon je Aktion; kein Inline-SVG plus CSS-Pseudoelement gleichzeitig.
- Veranstalter, Versicherungen, Hotels und Servicekontakte verwenden dieselbe grüne Aktionssprache.
- Echte Notrufnummern bleiben als einzige Telefonaktionen rot.
- Vorbereitung / nächster Termin: kompakte Icon-Aktionen statt alter großer Textbuttons.
- Termin-Kachel bleibt visuell priorisiert, verwendet aber dieselbe Icon-Grammatik.
- Desktop und Mobile: Aktionsicons kollidieren nicht mit Überschrift/Datum und erzeugen keinen Horizontal-Overflow.

## Release-Paketierung · verbindlich ab v58
- Ausgangsbasis ist immer das vollständige letzte **GitHub-Pages-ZIP**, nicht ein temporärer Arbeitsordner.
- Vor Build wird die Ausgangsbasis in einen leeren Release-Ordner extrahiert.
- Deployment enthält mindestens alle in `RELEASE-MANIFEST.json` als erforderlich markierten Dateien.
- `tour.enc.json` und `wartung.enc.json` sind vorhanden und entschlüsselbar.
- `tour.html` und `wartung.html` sind **nicht** im Deployment enthalten.
- Private Entsperrcode-Dateien, Passwörter und Schlüssel sind **nicht** im Deployment enthalten.
- ZIP enthält genau eine Root-Ebene; keine absoluten oder vorangestellten Pfade wie `mnt/data/...`.
- Keine doppelten Dateipfade im ZIP.
- ZIP wird vor Neuaufbau gelöscht beziehungsweise atomar neu erzeugt; niemals in ein vorhandenes ZIP hineinappendieren.
- Service-Worker-Cache und sichtbare App-Version stimmen mit dem Release überein.

## v58 · gezielte Regressionen
- Vorbereitung und Wartung: HSC/HSR stehen außerhalb der GRIP2-Ringe; LSC/LSR bleiben im inneren Ring lesbar.
- Tuning → Reifendruck: keine separate dunkle 23/27-psi-Kachel mehr; Startwerte stehen in der gleichen Reifen-Visualisierung wie unter Vorbereitung.
- Reifendrucktexte sind vollständig sichtbar und kollidieren weder mit Reifenillustration noch Druckwerten.
- Werte bleiben unverändert: 23 psi / 1,59 bar vorn und 27 psi / 1,86 bar hinten.
- Reifen-Szenarien behalten dieselben ±2-psi-Schritte; nur Sprache und Darstellung wurden angepasst.
- `PROJECT-GUIDELINES.md`, `DESIGN-SYSTEM.md`, `DATA-MODEL.md` und `CHANGELOG.md` sind im Release vorhanden.

## v59 · Reifenvisualisierung und SRAM-Kalibrierung
- Vorbereitung → Trail-Setup: Laufradillustration besitzt eine eigene Grid-Spalte; Text und Druckwerte dürfen die Grafik bei 390/430/768/1024/1440/1920 px nicht überlagern.
- Tuning → Reifen, oberer Grundsetup-Block: identische kanonische Laufradillustration wie Vorbereitung; kein Text-/Bild-Overlap.
- Tuning → Reifen, untere Szenario-Karten bleiben funktional und visuell unverändert.
- Wartung → Basissetup/Reifen: Butcher und Eliminator verwenden dieselbe `wheel-illustration` wie Vorbereitung/Tuning; keine `tire-dial`-Doppelkreisvisualisierung mehr im sichtbaren Reifen-Setup.
- SRAM-Kalibrierungsblock: Text links, Gewicht/Slider rechts; Skala und offizieller SRAM-Rechner-Link sind logisch beim Slider gruppiert.
- SRAM-Kalibrierungsblock erzeugt bei 390/430/768/1024/1440/1920 px keinen horizontalen Dokument-Overflow.
- Werte unverändert: Slider 92–100 kg, Tourstart 23/27 psi, SRAM-Lookup und Szenario-Schritte unverändert.

## v60 · gezielte Layout-Regressionen
- [ ] Vorbereitung/Reifendruck: Laufrad, Reifenbezeichnung und Druckwert überlappen sich nicht; `Butcher`, `Eliminator` und `Tubeless` werden bei 390/430/768/1440/1920 px nicht innerhalb eines Wortes getrennt.
- [ ] Vorbereitung/Reifendruck: Unterhalb der definierten Breite werden Vorder-/Hinterradkarten gestapelt, ohne horizontalen Dokument-Overflow.
- [ ] Vorbereitung und Wartung/Fahrwerk: HSC/LSC- und HSR/LSR-Kreisgrafik liegt auf der optischen Kartenmittelachse; Richtungshinweise bleiben rechts bzw. auf Mobile darunter.
- [ ] Tuning/SRAM: Slider und Skala haben dieselbe nutzbare Breite; Gewichtsanzeige steht rechts vom Slider.
- [ ] Tuning/SRAM: Link zum offiziellen SRAM-Rechner liegt in einer eigenen Zeile unter Slider/Skala und verändert weder Sliderbreite noch Skalenposition.
- [ ] Tuning/Reifen: bestehende obere Reifenvisualisierung und untere Szenario-Karten sind gegenüber v59 unverändert.
