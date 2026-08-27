## v65 · Vorbereitung-Routenübersicht und getrennte Gabelregler

- Vorbereitung: Routenkette über die volle Inhaltsbreite erweitert; die sechs Abschnittsbreiten folgen proportional dem Mittelwert der Distanzen beider Varianten.
- Für jede Etappe werden Distanz und Höhenmeter von Variante I und II direkt zwischen Start- und Zielort angezeigt.
- Rücktransfer am Sonntag ergänzt: Bus vom Comer See nach St. Anton, Abfahrt 8:30–9:00 Uhr und Ankunft gegen 13:00 Uhr.
- Fahrwerks-Kompaktübersicht konsistent auf fünf Kacheln erweitert: Gabel HSC, LSC, HSR und LSR getrennt sowie FLOAT X separat.

## v64 · Security-Recovery

- Privaten Entsperrcode nach versehentlicher Veröffentlichung rotiert.
- Neuen PBKDF2-Salt erzeugt und beide Payloads (Tour und Wartung) neu mit AES-256-GCM verschlüsselt.
- Deployment-Paket enthält ausschließlich verschlüsselte Payloads; keine Klartext-HTMLs, keine Unlock-Dateien, keine internen Kandidaten-/Source-Dateien.
- UI-Änderungen aus v63 übernommen: Reifendruck-Redundanz reduziert und Fahrwerksillustrationen als Doppelringe.


## v63
- Reifendruck-Redundanz entfernt: obere Kompaktkachel durch die Szenario-Karten mit Tabelle ersetzt; doppelte Darstellung im Reifendruck-Abschnitt reduziert.
- Fahrwerks-Reglerkarten auf Doppelring-Illustrationen umgestellt, ohne Textinhalt der Kacheln zu ändern.

## v62
- Reifendruck im Tuning-Bereich vereinfacht: redundante obere Reifen-Kachel entfernt und durch die beiden Szenario-Karten ersetzt.
- Fahrwerks-Kurzreferenz beibehalten; Ring-Illustrationen bleiben als Doppelringe, ohne Text-/Layoutänderungen in den Karten.

# Changelog

## v61 · 2026-08-27

- Reifenkarten im Setup erneut korrigiert: Reifendruckwerte rechts wieder dauerhaft sichtbar, feste Druckspalte und ruhigerer Textblock ohne unschöne Ausrichtung.
- Motor-Startkarte oben neu ausgerichtet: erklärender Text sauber unterhalb des Titels, dadurch stabileres Layout in der oberen Setup-Zeile.
- Fahrwerks-Legende im Bereich "Fahrwerk" auf Doppelringe umgestellt: außen/innen werden jetzt visuell über äußeren bzw. inneren Ring hervorgehoben.

# Transalp PWA · Changelog

## v60 · 2026-08-27
- Vorbereitung: Reifenkarten als stabiles Drei-Spalten-Layout ohne Wort-/Silbentrennung; bei schmalen Breiten werden die Karten gestapelt.
- Fahrwerk: GRIP2-HSC/LSC- und HSR/LSR-Kreisgrafiken auf eine exakt mittige Kartenachse gesetzt; Richtungshinweise bleiben rechts.
- SRAM-Gegencheck: Slider und Skala bilden wieder eine ununterbrochene Achse, die Gewichtsanzeige steht rechts davon und der offizielle SRAM-Link separat darunter.
- Tuning-Reifen-/Szenario-Darstellung, Werte, Navigation, Persistenz, Offline- und Verschlüsselungslogik bleiben unverändert.

## v59 · 2026-08-27
- Reifenvisualisierung in Vorbereitung und im oberen Tuning-Bereich so angeordnet, dass Laufrad und Text sich nicht mehr überlagern.
- Wartung verwendet für Butcher/Eliminator dieselbe kanonische Laufradillustration wie Vorbereitung und Tuning; die Doppelkreis-Darstellung entfällt dort.
- SRAM-Gegencheck kompakter gruppiert: Gewicht, Slider, Skala und offizieller Rechner-Link bilden eine zusammenhängende Bedieneinheit.
- Reifenwerte, SRAM-Vergleichswerte, Tuning-Szenarien und Funktionen bleiben unverändert.
- Regressionstests für Reifenüberlappung, gemeinsame Visualisierung und SRAM-Kalibrierungsblock ergänzt.

## v58 · 2026-08-27
- GRIP2-Außenbeschriftungen bei HSC/HSR aus den Ringen herausgesetzt, in Vorbereitung und Wartung konsistent.
- Reifendruck-Tuning verwendet dieselbe Reifen-Visualisierung wie die Vorbereitung.
- Redundanten separaten 23/27-psi-Kasten im Tuning entfernt.
- Erklärtexte im betroffenen Setup-/Reifenbereich verständlicher formuliert; Werte und Tuninglogik unverändert.
- Projekt-Guidelines, Design-System und Datenmodell als persistente Repository-Dokumentation ergänzt.
- Release-Paketierung durch Manifest- und Privacy-Prüfung abgesichert.

## v57 · 2026-08-26
- Tour-UI, Wetterkarten und Setup-Darstellung überarbeitet.
- Reifendruck- und Fahrwerksdarstellung nachgezogen.
- Packbereich und Motor-Startreferenz bereinigt.

Ältere Änderungen bleiben über die Git-Historie und vorhandenen QA-Dateien nachvollziehbar.
