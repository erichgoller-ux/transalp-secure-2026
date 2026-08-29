## v71 · Fahrwerkskarten wieder kompakt ausgerichtet

Die drei Fahrwerkskarten stehen auf breiten Displays wieder kompakt nebeneinander. Ausschließlich die Reglerdarstellung wurde stabilisiert: Jeder Ring ist mittig ausgerichtet, die Drehrichtungshinweise stehen darunter und erzeugen keine schmale, umbrechende Seitenspalte.

- Kompakte Dreierspalte auf breiten Displays; einspaltig unter 1.080 px.
- Ringe innerhalb jeder Karte exakt zentriert.
- Zwei Richtungshinweise unter dem Ring; auf sehr schmalen Displays einspaltig.
- Kein horizontaler Überlauf bei lokal geprüften 844 und 1.440 px Viewportbreite.
- FLOAT-X-LSC weiterhin durchgehend als blauer Ring dargestellt.
- Payloads neu verschlüsselt und Sicherheits-Gate bestanden.

## v70 · Fahrwerkskarten robust untereinander angeordnet

Die fehleranfällige Mehrspaltenlösung vollständig entfernt. Gabel-Kompression, Gabel-Rebound und FLOAT X stehen jetzt jeweils in einer eigenen vollen Zeile. Regler und Drehrichtung sind nicht mehr in eine schmale Seitenspalte gezwängt; die Richtungshinweise stehen in breiten Feldern unter dem Regler.

- Drei große Fahrwerkskarten dauerhaft untereinander angeordnet.
- Regler jeder Karte zentriert und Richtungshinweise darunter platziert.
- Zwei breite Richtungsfelder; auf sehr schmalen Displays automatischer Wechsel auf eine Spalte.
- Kein horizontaler Überlauf bei lokal geprüften 390, 844 und 1.440 px Viewportbreite.
- FLOAT-X-LSC lokal als blauer Ring gerendert und per berechnetem Farbwert geprüft.
- Payloads neu verschlüsselt und Sicherheits-Gate bestanden.

## v69 · FLOAT-X-LSC durchgehend blau und Kartenraster stabilisiert

Den FLOAT-X-LSC-Regler in allen Fahrwerks- und Tuning-Darstellungen konsequent als blauen Einzelring ausgezeichnet. Das Raster der drei großen Fahrwerkskarten auf eine verfügbare-breitenabhängige Anordnung umgestellt, damit die Dämpferkarte nicht mehr gequetscht oder seitlich abgeschnitten wird.

- Gelb/orange Darstellung des FLOAT-X-LSC im Szenario „Nasse Wurzeln“ entfernt und durch den einheitlichen blauen Ring ersetzt.
- Große Fahrwerkskarten verwenden jetzt ein automatisch umbrechendes Raster mit belastbarer Mindestbreite.
- Lange Richtungsbegriffe dürfen innerhalb der Hinweiskarten sauber umbrechen.
- Tour- und Wartungsansicht auf dieselbe Rasterlogik abgeglichen.
- Payloads neu verschlüsselt und Sicherheits-Gate erneut bestanden.

## v68 · FLOAT-X-Regler eindeutig dargestellt

Die FLOAT-X-Darstellung auf die zwei real getrennten Einzelregler korrigiert: LSC blau als Druckstufe und Rebound rot als Zugstufe. Im Fahrwerks-Tuning beide Dämpferregler ergänzt, farblich eindeutig ausgezeichnet und die jeweilige Funktion analog zur Gabel beschriftet.

- FLOAT X in Tour- und Wartungsansicht mit je einem einfachen blauen und roten Regler statt Doppelring dargestellt.
- Tuning-Übersicht um die fehlende blaue FLOAT-X-LSC-Karte ergänzt; Dämpferkarten rechts neben den vier Gabelkarten angeordnet.
- Druckstufe und Zugstufe mit Drehrichtung und Wirkung direkt an allen sechs Tuning-Karten benannt.
- Responsive Raster für sechs Karten auf Desktop sowie drei, zwei oder eine Karte auf schmaleren Ansichten ergänzt.
- Payloads mit neuem Salt und frischen IVs verschlüsselt; Sicherheits-Gate erneut ausgeführt.

## v67 · Fahrwerksbaseline auf reales Bike-Setup aktualisiert

FOX 36 GRIP2 und FLOAT X auf die am Bike real gezählten Klickbereiche und die abgestimmte Transalp-Baseline aktualisiert; Trail-Feintuning ergänzt. Verschlüsselte Payloads neu erzeugt, Sicherheits-Gate bestanden.

- FOX 36: 86 psi, 30–32 mm beziehungsweise 19–20 % SAG; HSC 6/8, LSC 12/16, HSR 3/8 und LSR 5/15, jeweils von CLOSED offen.
- FLOAT X: 15,5–16 mm beziehungsweise 28–29 % SAG; LSC 5/6 offen (1 Klick von OPEN Richtung CLOSED) und Rebound 7/13 von CLOSED offen.
- Trail-Regeln abgeglichen: bei erkennbarem Packing zuerst LSR 5/15 → 6/15; bei zu viel Bremsnicken oder zu wenig Plattform LSC 12/16 → 11/16; immer nur einen Parameter gleichzeitig ändern.
- Neuer zufälliger 16-Byte-PBKDF2-Salt und frische 12-Byte-GCM-IVs; PBKDF2-SHA256 bleibt bei 250.000 Iterationen.

## v66 · Routenstrahl und kompakter Reiseabschluss repariert

- Rechten Endpunkt des Streckenstrahls innerhalb der Kartenbreite fixiert und den funktionslosen Endpfeil entfernt.
- Erklaerhinweis zur proportionalen Abschnittsbreite aus der sichtbaren Oberflaeche entfernt.
- Ueberzaehlige CSS-Klammer beseitigt, damit Veranstalter, Reise, Gruppe und Tourseiten-Link wieder in der kompakten Desktop-Zeile statt in hohen Einzelbloecken erscheinen.
- Vollstaendige Vorbereitung-Seitenhoehe sowie Desktop- und Mobil-Breakpoints als verbindlichen Regressionstest aufgenommen.

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
