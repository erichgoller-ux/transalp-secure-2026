Northstar Companion · Transalp Secure PWA v11
================================================

Änderungen v11
--------------
1. Baseline-/Rückbau-Fotos werden in den Karten nicht mehr abgeschnitten.
   - object-fit: contain statt cover
   - vollständiger Bildinhalt sichtbar
   - Antippen/Klicken öffnet eine große Vollbildansicht
   - funktioniert auf iPhone, iPad und Mac

2. Die große IndexedDB-/JSON-Sicherungsbox wurde aus dem Wartungsinhalt entfernt.
   Die Wartungsseite beginnt damit wieder direkt mit dem eigentlichen Inhalt.

3. Datenbank & Sicherung sitzt global in der oberen App-Leiste:
   - neuer Button "DB" direkt neben dem Sync-Status
   - DB öffnet die bestehende gemeinsame Sicherungsansicht
   - dort: lokale IndexedDB-Prüfung, Gesamtsicherung JSON, Wiederherstellung,
     gemerkten Entsperrcode löschen
   - das grüne ✓ daneben bleibt der Northstar-Cloud-Sync-Status

4. Die JSON-Sicherung ist ausdrücklich nur noch die zusätzliche Notfallsicherung.
   Normale Speicherung und Synchronisation erfolgen automatisch.

Keine weitere Supabase-Einrichtung nötig.
Entsperrcode bleibt unverändert.


v12 · JobRad-Notfallsektion
---------------------------
- Leasingvertragsnummer ELV-2360626 ergänzt.
- ROLAND 24h-Mobilitätsgarantie: +49 221 8277 9798.
- assona Schadenmeldung: +49 30 208 666 24, kundenservice@assona.com.
- Getrennte Abläufe für Panne/Unfall, Diebstahl/Raub/Vandalismus,
  sonstige Beschädigung und FullService/Verschleiß.
- Rahmennummer als lokal/synchronisiert gespeichertes Feld ergänzt.
- Beide vom Nutzer bereitgestellten JobRad-Merkblätter als Offline-PDF eingebettet.
- Bestehende Verschlüsselung, Offline-Speicherung und Northstar-Sync bleiben erhalten.


v13 · Navigation & Setup-Konsistenz
------------------------------------
- Tournavigation erweitert: Startsetup, Guides, JobRad-Notfall, Hotels/Kontakte.
- Wartungsnavigation optisch an Tour angeglichen.
- Fehlerhafter Wartungsbutton/-abschnitt "Tourbegleiter" entfernt.
- Wartungs-Basissetup und Tour-Startsetup auf eine gemeinsame Referenz gebracht:
  FOX 36 93 psi Füllstart / 32 mm SAG / HSC 7 / LSC 10 / HSR 3 / LSR 4;
  FLOAT X 16,5 mm SAG, OPEN, LSC 2 von OPEN, Rebound druckabhängig;
  Reifen 1,59 bar / 23 psi vorn und 1,86 bar / 27 psi hinten;
  Motor Eco 20/50, Trail 35/65, Turbo 70/100, Response 10, Shuttle 0.
- Nass-/Wurzel- und Gerölllogik zwischen Tour und Wartung vereinheitlicht.


v14 · Startkachel, Versionsstand, Backup & App-Chain
-----------------------------------------------------
- Globaler Versionsstand oben: v14 · 25.08.26.
- Alter iframe-Hoverhinweis "Transalp Offline-App" entfernt.
- Startkachel: bikeAlpin GmbH, Reisenummer 6ITE15, Termin-Unterlagen
  6ITE15-10 und direkter Link zur offiziellen Tourseite.
- Alte sichtbare Versions-/Generierungsbadges entfernt.
- Statischer Wetter-Hinweis vom 23.08. durch die automatische
  Open-Meteo-Aktualisierung ersetzt.
- Tour-spezifischer JSON-/IndexedDB-Backupblock entfernt:
  Gesamtsicherung/Wiederherstellung global über DB; CSV bleibt.
- App-Chain:
  Specialized iPhone + Apple Watch = primäre Aufzeichnung/Anzeige.
  WorkOutDoors Apple Watch = nur Karte/GPX, kein Workout.
  Specialized FIT -> HealthFit -> Apple Health inkl. Route/Karte.
  Polarsteps separat und privat.


v15 · Notfall-Priorität, Praxishilfe, Tools & Livecams
-------------------------------------------------------
- Topbar-Version nur noch v15, ohne Datum.
- Tour-Navigation: eigener Einstieg Praxishilfe; Notfall springt direkt
  zu regionalen Notrufnummern und Assistance.
- Notfallreihenfolge: regionale Nummern -> Hallesche/DRF -> Ernstfall-Ablauf -> JobRad.
- Hope-Carbonlenker-Hilfe nach Tipps & Tricks / Praxishilfen verschoben.
- Tourübersicht enthält bikeAlpin GmbH, Reisenummer 6ITE15,
  Termin-Unterlagen 6ITE15-10 und Tourkatalog-Link.
- Doppelte Reisedaten aus der Startkachel entfernt.
- Tools um Polarsteps und Relive ergänzt.
- Relive bevorzugt Specialized-FIT; GPX/TCX/FIT brauchen Route + Zeitstempel.
- Wetterkarten verlinken verifizierte Livecams für St. Anton,
  Heilbronner Hütte, Ischgl, Nauders, Müstair, Livigno und St. Moritz.


v16 · Wartungs-Startsetup & Fakten-Sprung
------------------------------------------
- Wartung/Basissetup nutzt wieder die grafische Darstellung des
  Tour-Startsetups: GRIP2 Compression, GRIP2 Rebound, FLOAT X,
  Reifen/Motor, SRAM-Druckhilfe und Reifendrucktabelle.
- Wartungs-Finalwertfelder und Diagnosehinweise bleiben darunter erhalten.
- Globale Statusleiste um "Fakten" ergänzt.
- Fakten wechselt aus Wartung automatisch in Tour und springt zu
  Kapitel "Daten & Fakten".
- Version oben: v16.


v17 · Reisebegleitung, Livebilder & Tour-Lernlog
-------------------------------------------------
- Tour-Navigation: expliziter Link "Daten & Fakten".
- Globaler Kopf: Tour, Wartung, Fakten, Praxis, Notfall, Sync, DB, Sperren;
  mobil horizontal scrollbar statt gequetschter Buttons.
- App-Chain: kompakte Zwei-Phasen-Darstellung Unterwegs / Nach der Etappe.
- Persönliches Akku-Modell, FIT-Kalibrierung und Quellenabweichung aus
  dem Tagesbriefing nach "Daten & Fakten" verschoben.
- Wetter: Direktbild neben Wetterdaten statt Webcam-Button.
  Direkte verifizierte JPG-Quellen: DAV Heilbronner Hütte und Ischgl TV.
  Andere Anbieter zeigen einen ehrlichen, klickbaren Livecam-Fallback.
- Tourdaten: "Istwerte & Erkenntnisse" statt großer leerer Plan/Ist-Tabelle.
  Nur abgeschlossene Etappen werden als Lernkarten gezeigt.
- Foto-Buttons in Wartung auf Desktop und Mobil sauber ausgerichtet.


v18 · Wetterbriefing, Grenzverlauf & Reifen-Visualisierung
------------------------------------------------------------
- Wetterhinweise sprechen jetzt wie ein Guide/Meteorologe:
  klare Aussagen zu Gewitter, Regen, Böen und Kälte sowie konkrete
  Konsequenzen für den Tourtag; interne Modellbegriffe entfallen.
- "Tourhinweis" heißt "Einschätzung für die Etappe".
- Länderfolge zu einem kompakten "Grenzverlauf" umgebaut; Varianten
  stehen platzsparend nebeneinander, mobil werden Ländernamen reduziert.
- Wartung/Basissetup: Reifendruck komplett neu gestaltet nach dem
  visuellen Prinzip des Fahrwerks.
  * eigene Karte für Butcher vorn und Eliminator hinten
  * große, sofort lesbare Startdrücke
  * klare Zielsetzung und ±2-psi-Regeln
  * vier kompakte Einsatz-Szenarien
  * SRAM-Rechner und Herleitung nur noch als aufklappbare Referenz
- Alte Reifendrucktabelle und große SRAM-Erklärfläche entfernt.


v19 · Akku-Referenzmodul & Wetter-Resume
-----------------------------------------
- Akku-Prognose/FIT-Kalibrierung aus der dunklen Kapitel-Introfläche
  herausgelöst und als eigenständiges, kontrastfestes Referenzmodul aufgebaut.
- Hauptlayout nach 61,8/38,2-Verhältnis: persönliche Formel als Hauptinhalt,
  Entscheidungsregeln als sekundäre Spalte.
- Evidenzbereich vereinheitlicht: Referenzfahrten, 641-Wh-Rechengröße,
  Modellvergleich und Methodikhinweis in einem zusammenhängenden System.
- Explizite Textfarben verhindern geerbte Weiß-auf-Weiß-Darstellung.
- Wetterprüfung beim Start UND beim Zurückholen der PWA aus dem Hintergrund:
  visibilitychange, pageshow, focus und Rückkehr ins Netz.
- Die 30-Minuten-Cachegrenze bleibt erhalten; innerhalb dieser Zeit wird
  kein unnötiger Open-Meteo-Request ausgelöst.


v20 · Kompakte Wetterkarten & Prognose-Piktogramm
--------------------------------------------------
- Wetterpunkt-Kacheln kompakter: Titel/Temperatur in einer Kopfzeile,
  Messwerte links und Livecam rechts.
- Livebilder nutzen einen festen 16:9-Bildraum und sind mittig ausgerichtet.
- Fallback ohne direktes Bild ist kein großer leerer Bildkasten mehr,
  sondern ein kleiner integrierter Livecam-Verweis.
- Wetterübersicht erhält ein dynamisches Piktogramm aus dem geladenen
  Open-Meteo/WMO-Wettercode (klar, bewölkt, Nebel, Regen, Schnee,
  Schauer oder Gewitter).
- 30-Minuten-Wettercache und Resume-Aktualisierung aus v19 unverändert.


v21 · Ein Datenpfad für Verbrauch & Prognose
---------------------------------------------
- Die separate 6-Zeilen-Verbrauchstabelle wurde entfernt.
- Tagesbriefing/Stützstellen + Tagesabschluss sind jetzt die einzige
  Eingabequelle für reale Tourdaten.
- Während der Fahrt korrigieren reale Akkustände nur die Restprognose
  des laufenden Tages.
- Nach einem vollständigen Tagesabschluss (Start/Ziel/Ladegewinn plus
  reale km/hm) fließt die Etappe automatisch in die dauerhafte
  Tourkalibrierung ein.
- Der Lernfaktor wird kumuliert als Verhältnis aus realem Verbrauch und
  unkalibriertem Basismodell aller plausiblen abgeschlossenen Etappen
  berechnet; dadurch dominiert kein einzelner kurzer Tag.
- Tagesfaktoren außerhalb 0,70–1,35 werden als Prüfpunkt angezeigt und
  nicht automatisch in das Wochenmodell übernommen.
- Der frühere Bereich "Verbrauch messen und optimieren" ist jetzt ein
  reiner Kalibrierungsmonitor: Lernfaktor, verwertete Tage, reale
  Wh/hm, Wirkung auf die Prognose und Kalibrierungsverlauf.
- Bereits gespeicherter Lernfaktor bleibt als Ausgangswert erhalten,
  bis belastbare neue Tagesdaten vorliegen.


v22 · Hallesche-Auslandsschutz richtig zugeordnet
--------------------------------------------------
- Hallesche-Notfallkarte als Auslandsreise-Krankenversicherung /
  Zusatzschutz zur gesetzlichen Krankenversicherung gekennzeichnet.
- Falschen Link zum allgemeinen Service-Wegweiser der privaten
  Krankenvollversicherung entfernt.
- Neuer Link: offizielle Hallesche-FAQ zur Auslandsreise-Krankenversicherung.
- Button: "Auslandsschutz & Leistungen".
- Zwecktext präzisiert; maßgeblich bleiben die Bedingungen des versicherten Tarifs.
- Die vorhandene 24-h-Auslands-Notrufnummer bleibt unverändert.


v23 · Northstar Ride Analysis / FIT-Tagesworkflow
--------------------------------------------------
Zielbild:
  Specialized FIT = technische Rohdatenquelle.
  Tagesdokumentation = operativer Kontext und eigene Notizen.
  ChatGPT = detaillierte FIT-Auswertung.
  Northstar Ride Analysis JSON = kleine versionierte Übergabedatei.
  PWA = Offline-Gedächtnis + robuste Kalibrierung der Folgetage.

Tagesablauf:
1. Specialized-Fahrt speichern und FIT exportieren.
2. FIT im Tour-Chat hochladen.
3. ChatGPT analysiert nur tatsächlich vorhandene FIT-Felder.
4. Ergebnis als northstar.ride-analysis Schema 1.0 erzeugen.
5. In der PWA "Analyse-JSON auswählen".
6. Vorschau prüfen und übernehmen.
7. Verifizierte technische Felder dürfen strukturierte Tageswerte ergänzen;
   eigene Tages-, Setup- und Motornotizen werden nie überschrieben.
8. Northstar-Sync synchronisiert die Analyse automatisch zwischen den Geräten.

Kalibrierung:
- Verifizierte FIT-Analysen haben höheres Qualitätsgewicht.
- Teilweise verifizierte Analysen werden gedämpft.
- Status "review" fließt nicht automatisch in die Kalibrierung ein.
- Größere Etappen wirken durch ihren höheren Basismodell-Verbrauch stärker.
- Faktor außerhalb 0,70–1,35 bleibt Prüfpunkt.
- Leistungs-/Unterstützungs-/Wetterdetails erklären Ursachen; bei nur sechs
  Tourtagen werden daraus bewusst keine zusätzlichen ML-Koeffizienten gefittet.

Öffentliche Hilfsdateien:
- northstar-ride-analysis.schema.json
- northstar-ride-analysis.example.json
Beide enthalten keine privaten Tourdaten.


v24 · Tourablauf & technische Tour-Scorecard
---------------------------------------------
Neue Informationsarchitektur:
1. Vor der Tour
   - Tourüberblick
   - Vorbereitung / Gepäck
   - Startsetup
   - Apps & Tools
2. Während der Tour
   - Tagesbriefing / Wetter
   - Variante I oder II morgens auswählen
   - nur reale Akkustände und tatsächlichen Ladegewinn an markanten
     Stützstellen eintragen
   - nicht gewählte Variante bleibt als Vergleich sichtbar, ihre
     Live-Eingabefelder sind gesperrt
3. Nach der Etappe
   - Specialized-Fahrt speichern
   - in der PWA nur Kontext und echte Änderungen ergänzen
   - km / hm / aktive Fahrzeit können bis zur FIT-Analyse vorläufig
     oder leer bleiben
   - FIT im Tour-Chat hochladen
   - Northstar Ride Analysis JSON importieren
   - Scorecard und Prognose aktualisieren sich

Faire Prognosebewertung:
- Beim ersten realen Akku-Istwert einer Etappe wird die zu diesem
  Zeitpunkt gültige Startprognose automatisch als Forecast Snapshot
  gespeichert.
- Historische Prognosegüte wird danach gegen diesen Snapshot gemessen.
  Spätere Lernfaktor-Updates schreiben die Prognosehistorie nicht um.
- Bei einer Ladung wird der Zielakku-Vergleich ladungsbereinigt.

Tour-Scorecard:
- funktioniert bereits vor der Tour mit sechs Planzeilen
- pro Tag: Datenstand, Plan, Ist km/hm/Zeit, Akku/Wh,
  Verbrauchsabweichung und Zielakku-Abweichung
- Datenstatus: Plan / Tagesdoku vorläufig / FIT teilweise /
  FIT verifiziert
- Gesamt: Fortschritt, Tourplan, reale Summe, gewichtete absolute
  Verbrauchsabweichung, mittlere Zielakku-Abweichung, Reserve-Treffer,
  FIT-Abdeckung und aktueller Lernfaktor
- bewusst keine künstliche 0–100-Fitness-/Gamification-Note

FIT-Handoff:
- PWA lädt keine .FIT-Datei zu ChatGPT hoch.
- Specialized-FIT wird im bestehenden Tour-Chat als Datei angehängt.
- Button "Analyseauftrag kopieren" erzeugt einen passenden Text für
  den nächsten noch nicht analysierten Tag.
- Die importierte Northstar-JSON-Datei synchronisiert wie bisher
  offline-first über IndexedDB + verschlüsselten Northstar-Sync.


v25 · Tagesbriefings auf letzten guten Stand zurückgesetzt
------------------------------------------------------------
- Darstellung und Bedienung der Tagesbriefings wieder wie in v23.
- Zusätzliche v24-Tages-Operationsleiste entfernt.
- Keine Sperrung der jeweils anderen Variante mehr.
- Akku-Stützstellen wieder in der bewährten kompakten Darstellung.
- Tagesabschluss wieder im vertrauten v23-Aufbau.
- v24-Neuerungen außerhalb der Tagesbriefings bleiben erhalten:
  3-Phasen-Struktur, technische Tour-Scorecard, Forecast-Snapshots,
  FIT→ChatGPT→Northstar-JSON, Northstar-Sync, Offline und Verschlüsselung.
- Forecast-Snapshot läuft unsichtbar im Hintergrund: die erste reale
  Akkueingabe friert die damalige Prognose für die spätere Scorecard ein.


v26 · Tourseite fachlich neu sortiert
--------------------------------------
1. Die Tour auf einen Blick + Guides
2. Vorbereitung + finales Trail-Setup
3. Tagesbriefings + FIT-Auswertung des jeweiligen Tages
4. Tagesabschluss der Tour-Etappe
5. Tour-Scorecard
6. Tuning: Kennlinien, Fahrwerk, Reifen
7. Daten & Fakten: Reiseunterlagen, Apps/Tools, Tipps & Tricks, Quellen
8. Notfall & Kontakte

Die misslungene Vor/Während/Nach-Phasenarchitektur ist entfernt.

Finales Trail-Setup:
- bestätigtes Reifen-Basissetup bleibt enthalten
- Szenario-Kachel "Heutigen Start ableiten" entfernt
- detaillierte SRAM-Reifendruck-/Einsatzreferenz nach Kapitel 6 "Reifen" verschoben

Tagesbriefings:
- bewährter v23/v25-Aufbau bleibt erhalten
- nach jedem Tagesabschluss führt ein kleiner Übergang zur FIT-Auswertung
- FIT-Import und Tageszuordnung bleiben technisch unverändert

Statusnavigation:
Tour → Vorbereitung → Tagesbriefings → Tagesabschluss → Scorecard →
Tuning → Daten & Fakten → Notfall


v27 · Roter Faden ohne Kapitelbanner
-------------------------------------
Die großen Kapitel-Kacheln aus v26 wurden vollständig entfernt.

Die eigentlichen Inhalte der Tourseite stehen jetzt direkt in dieser Reihenfolge:
1. Tourüberblick + Guides
2. Vorbereitung + finales Trail-Setup
3. Tagesbriefings + Wetter + Istwerte + FIT-Tagesanalyse
4. Tagesabschluss
5. Tour-Scorecard
6. Tuning: Kennlinien, Fahrwerk, Reifen
7. Daten & Fakten / Tools / Apps / Praxishilfe / Quellen
8. Notfall & Kontakte

Die Tour-interne Statusnavigation zeigt bewusst nur den Workflow:
Tourüberblick → Vorbereitung → Tagesbriefings → Tagesabschluss → Scorecard → Tuning

Daten & Fakten sowie Notfall wurden aus dieser internen Tour-Navigation entfernt,
weil sie bereits über die globale App-Navigation erreichbar sind.

Die vier Kernschritte der Tagesarbeit sind dezent nummeriert:
1 Vorbereitung
2 Tagesbriefings
3 Tagesabschluss
4 Scorecard

Keine neue Informationsschicht, keine zusätzlichen Kapitelbanner.


v28 · Hauptansichten statt einer langen Tourseite
---------------------------------------------------
Die Tourdaten wurden absichtlich NICHT auf verschiedene Datenbanken oder
voneinander unabhängige Apps verteilt. Es bleibt ein gemeinsames,
verschlüsseltes Tour-Dokument mit derselben IndexedDB-/Sync-/FIT-Logik.
Die App-Shell zeigt daraus separate Hauptansichten. Dadurch bleibt der
Datenfluss unverändert und das Risiko von Inkonsistenzen gering.

Globale Hauptansichten:
- Tour
  Nur Tagesbriefings, FIT-Auswertung des Tages, Tagesabschluss und Tour-Scorecard.
- Vorbereitung
  Tourüberblick, Guides/Veranstalter, Vorbereitung, Gepäck, finales Trail-Setup
  und App-Chain.
- Tuning
  Kennlinien, Fahrwerk, Reifen und persönliches Akku-/FIT-Modell.
- Wartung
  Unveränderter Wartungsplan.
- Fakten
  Daten & Fakten sowie Quellen.
- Praxis
  Tipps & Tricks.
- Notfall
  Notfall & Kontakte.

Entfernt:
- Vier alten Überblickskarten Vorbereitung / Reisebegleitung /
  Tools & Optimierung / Daten & Fakten.
- Grüne Reisebegleitungs-Linkleiste mit Tagesbriefings / Tourdaten /
  Abendroutine / Kontakte.
- Tools-&-Optimierungs-Intro als zusätzliche Navigationsebene.

Interne Navigation unter Tour:
1 Tagesbriefings → 2 FIT-Auswertung → 3 Tagesabschluss → 4 Scorecard

Technische Kernfunktionen unverändert:
- gleiche localStorage-/IndexedDB-Schlüssel
- gleicher Northstar-Sync
- gleiche AES-Verschlüsselung
- gleicher FIT-Import / Ride Analysis
- gleiche Forecast-Snapshots
- gleiche Scorecard-Daten


v29 · Navigation und Sprache bereinigt
--------------------------------------
- Hauptbutton "Gepäck" ergänzt; eigene Ansicht auf Basis der bestehenden Gepäckliste.
- Vorbereitung und Gepäck sind nicht mehr doppelt belegt.
- Redundante Sprungbuttons in "Daten & Fakten" entfernt: 1.
- Aktiver Button-Zustand kontrastfest gestaltet.
- Hauptnavigation: "Fakten" → "Daten", "Praxis" → "Tipps".
- Sichtbare Texte in gebräuchliche Tour-/E-Bike-Sprache überführt.
- FIT, Scorecard, Northstar-Sync, Offline und Verschlüsselung unverändert.


v30 · Foto-UX, Reifen und Motorprofil
--------------------------------------
Fotodokumentation:
- große Upload-/Löschen-Schaltflächen entfernt
- gesamte Bildfläche ist Auswahl-/Drop-Zone
- Klick/Enter/Space öffnet die Dateiauswahl
- Drag & Drop wird unterstützt
- vorhandenes Bild kann durch erneuten Klick ersetzt werden
- kleines × oben rechts löscht das Bild
- Speicherung, JPEG-Kompression, IndexedDB und Northstar-Sync unverändert

Reifen:
- Ring-/Fahrwerksoptik vollständig entfernt
- eigene lineare Reifen-/Kontaktflächen-Symbolik
- kompakte Vorder-/Hinterrad-Darstellung
- Startdruck 23 / 27 psi sofort sichtbar
- je Reifen nur drei verständliche Korrekturregeln: -2 / Standard / +2 psi
- SRAM-Rechner nur noch als kompakter Gegencheck

Motorprofil:
- Eco / Trail / Turbo sauber in drei gleich breiten Feldern
- Ansprechverhalten, Shuttle und MicroTune bündig ausgerichtet
- Werte unverändert


v31 · Tour-Kollage im Reiseüberblick
------------------------------------
- grünen Reiseüberblick-Kasten um eine kompakte Tour-Kollage ergänzt
- keine externen Bildquellen nötig; rein offline-taugliche, eingebaute Visualisierung
- Etappenraum visualisiert: Arlberg/Verwall, Silvretta, Val Müstair, Livigno,
  Bernina/St. Moritz und Comer See
- bestehender Text, Route und Faktenblock unverändert


v32 · Reiseüberblick korrigiert
--------------------------------
- Tour-Mosaik nun randlos und zusammenhängend als 3×2-Streifen
- keine sichtbaren Zwischenräume und keine Einzelkarten-Rundungen
- Labels dezent direkt im Mosaik
- Reise-Rahmen rechts kompakter, strukturierter und optisch aufgewertet
- Reise-Highlights, Varianten, Bike und Ladegerät besser ausgerichtet
- CTA zum Tourkatalog klar am Ende platziert


v33 · Reifendruck mit Gewichts-Kalibrierung
---------------------------------------------
- bisheriges Reifen-Piktogramm durch echte Laufrad-Seitenansicht ersetzt:
  Reifenflanke, Felge, Speichen und Nabe
- 29" vorn sichtbar etwas größer als 27,5" hinten
- Fahrergewicht-Regler 92–100 kg in 1-kg-Schritten
- Referenzpunkt 98 kg bleibt exakt bei:
  Tourstart 23 / 27 psi
  SRAM trocken 24,5 / 28,9 psi
  SRAM nass 22 / 26 psi
- Vorder- und Hinterrad werden getrennt mit ihren bestehenden Referenzwerten
  für 29×2,4 bzw. 27,5×2,4 skaliert
- lokale Interpolation berücksichtigt konstante Bike-Masse und ist als
  persönliche Tour-Kalibrierung gekennzeichnet, nicht als offizielle SRAM-Formel
- zuletzt gewähltes Fahrergewicht wird lokal gespeichert


v34 · SRAM-Gegencheck als feste Gewichtstabelle
------------------------------------------------
Parameter:
- MTB Trail
- Bikegewicht 22,2 kg
- Tubeless / Hookless (Straight Side)
- 30 mm Felgeninnenweite
- GRID TRAIL als Reinforced
- vorn 29 × 2,4 (622 BSD)
- hinten 27,5 × 2,4 (584 BSD)
- Fahrergewicht 92–100 kg

Der Gewichtsregler verändert ausschließlich die SRAM-Gegencheck-Werte.
Der persönliche Tourstart 23/27 psi bleibt unverändert.

SRAM-Werte werden aus einer fest hinterlegten 92–100-kg-Tabelle geladen,
nicht mehr durch die frühere lokale Proportional-Interpolation.


v35 · Reifendruck-Tuning logisch strukturiert
---------------------------------------------
- SRAM-Werte als klare Matrix: Vorderrad links, Hinterrad rechts
- trocken/nass in separaten Zeilen
- redundante untere SRAM-Gegencheck-Box entfernt
- SRAM-Rechner-Link direkt beim Gewichtsregler
- Begriff "Ziel" entfernt
- je Reifen echte Szenariotabelle mit:
  Szenario / Anpassung / neuer Druck
- Laufradgrafiken und alle bestehenden Druckwerte beibehalten


v36 · Tuning startet beim Reifendruck
-------------------------------------
- Hauptnavigation "Tuning" öffnet direkt die Reifendruck-Sektion.
- Motor-/Kennlinien-Tuning, Fahrwerk und Akku-Modell bleiben in der Tuning-Ansicht erreichbar.
- Keine Änderungen an FIT, Scorecard, Sync, Offline oder Verschlüsselung.


v37 · Tuning-Hinweise geschärft
--------------------------------
- Tourstart 23/27 psi erklärt: persönlicher Startwert aus aktuellem Reifen-/Felgen-
  und Fahrer-Setup, mit SRAM als Plausibilitätscheck
- Kennlinien-Test zu optionalem Motor-Tuning-Versuch zurückgestuft
- nur noch bei konkretem Anlass aus Tages-/FIT-Daten
- jeweils genau einen Motorparameter verändern
- Übernahme nur bei reproduzierbarem Vorteil


v38 · Tuning bereinigt
----------------------
- separaten "Optionaler Motor-Tuning-Versuch" entfernt
- separaten Fahrwerks-Test "Ein Test, sauber dokumentiert" entfernt
- Tuning konzentriert sich auf konkrete Entscheidungsbereiche:
  Reifendruck, Fahrwerk und Motor/Kennlinie
- Wirkung einer Änderung wird nur noch im Tagesabschluss sowie über FIT-/Scorecard-Daten bewertet
- keine Änderungen an Druck-, Fahrwerks- oder Motorwerten


v39 · Einheitliches Seiten-Design
---------------------------------
- Reiseüberblick vollständig neu aufgebaut im Stil der Wartungs-Headline
- "Rahmen der Reise" entfernt; Reisedaten jetzt als klare Spec- und Meta-Leisten
- sechs bereits im Guide vorhandene echte Tourmotive als randloser Bildstreifen
  eingebunden und für Offlinebetrieb separat gecacht
- gleiche Headline-/Spec-Systematik für:
  Tour, Vorbereitung, Gepäck, Tuning, Daten, Tipps und Notfall
- doppelte erste Abschnittsüberschriften in den jeweiligen Ansichten ausgeblendet
- Wartungsseite selbst unverändert


v40 · Hauptnavigation setzt Scrollposition zurück
--------------------------------------------------
- Tour, Vorbereitung, Gepäck, Tuning, Wartung, Daten, Tipps und Notfall
  öffnen immer am Kopf der jeweiligen Seite
- sowohl die Scrollposition der äußeren PWA als auch die Scrollposition des
  entschlüsselten Inhalts werden auf 0 gesetzt
- erneutes Antippen des bereits aktiven Hauptbuttons springt ebenfalls nach oben
- interne Sprungziele innerhalb einer Seite bleiben unverändert nutzbar


v41 · Wartungsseite als verbindliches Designsystem
---------------------------------------------------
- redundante interne "Daten & Fakten"-Hero-Kachel entfernt
- Tour, Vorbereitung, Gepäck, Tuning, Daten, Tipps und Notfall verwenden
  jetzt dieselben Hero-Proportionen wie die Wartungsseite:
  Inhaltsbreite, Eyebrow, H1, Subline, 4er-Faktenleiste, Abstände und Typografie
- gleiche Systemschrift und Größenhierarchie für Seitenkopf und Abschnittsüberschriften
- Reisebilder bleiben als kompakter Inhaltsstreifen im Reiseüberblick erhalten
- keine Änderung an Navigation, Scroll-to-top, FIT, Scorecard, Sync,
  Offline- oder Verschlüsselungslogik


v42 · Einheitliche Kapitel-Navigation
-------------------------------------
- auf allen Hauptansichten einheitliche sekundäre Kapitel-Navigation
- gleiche Pill-Buttons, Abstände, aktiver Zustand und horizontales Scrollen auf iPhone
- beim Scrollen wird der aktuell sichtbare Abschnitt markiert
- Vorbereitung: Treffpunkt und Guides deutlich kompakter
- doppelte Treffpunkt-Information im Reiseüberblick entfernt
- Veranstalter und beide Guides in einer platzsparenden Kontaktstruktur
- Wartungsnavigation optisch und funktional an dasselbe System angeglichen
- keine Änderungen an FIT, Scorecard, Sync, Offline oder Verschlüsselung


v43 · Sekundärnavigation und Reifenillustration korrigiert
-----------------------------------------------------------
- sekundäre Kapitelbuttons auf Tour-Seiten und Wartung auf exakt dieselben
  Maße, Typografie, Abstände und aktiven Zustand vereinheitlicht
- aktiver Zustand jetzt immer dunkelgrün mit weißer Schrift und Lime-Ring
- Reifendruck-Überschrift im Tuning wieder sichtbar
- im Vorbereitung/Trail-Setup die Reifensymbole durch die bewährte
  Laufradillustration aus dem Tuning ersetzt
- keine Änderungen an Inhalten, Druckwerten, FIT, Scorecard, Sync,
  Offline oder Verschlüsselung


v44 · Doppelte Tour-Navigation entfernt / Notfall repariert
------------------------------------------------------------
- auf Tour nur noch eine sekundäre Navigation:
  Tagesbriefings · FIT-Auswertung · Tagesabschluss · Scorecard
- alte nummerierte Workflow-Leiste wird nicht mehr angezeigt
- Notfallinhalte logisch neu sortiert:
  Notruf → Versicherung → JobRad → Hotels → eigener Kontakt
- Notfall-Untermenü springt jetzt in derselben Reihenfolge durch den Inhalt
- Scroll-Spy bestimmt den aktiven Button anhand der realen Bildschirmposition
  statt anhand der Button-Reihenfolge
- keine Änderung an FIT, Scorecard, Sync, Offline, Verschlüsselung oder Daten


v45 · Sekundärnavigation funktional neu aufgebaut
--------------------------------------------------
- alle Untermenü-Buttons springen deterministisch zum exakt verknüpften Ziel
- automatischer Smooth-Scroll überschreibt den angeklickten aktiven Button
  nicht mehr
- aktiver Button bleibt nach Klick gesperrt, bis der Nutzer selbst scrollt
- Scroll-Spy übernimmt erst wieder bei echter manueller Navigation
- Sticky-Höhe wird beim Zielpunkt berücksichtigt; Überschriften bleiben sichtbar
- alle Ziel-IDs für Tour, Vorbereitung, Gepäck, Tuning, Daten, Tipps,
  Notfall und Wartung gegen den tatsächlichen DOM validiert
- keine Änderung an FIT, Scorecard, Sync, Offline oder Verschlüsselung


v46 · Motor-Referenz im Trail-Setup verdichtet
-----------------------------------------------
- große Box "Motorprofil · ausgewogener Tourstart" entfernt
- kompakte Referenz "Aktuelle Basis" mit Eco 20/50, Trail 35/65,
  Turbo 70/100, Response 10 und Shuttle 0
- MicroTune nur noch als kurze Randnotiz
- Tuning-Logik direkt sichtbar:
  beobachten → einen Parameter ändern → vergleichen → nur bestätigte
  Verbesserung übernehmen
- ausführliche situationsbezogene Kennlinien-Empfehlungen bleiben im
  Tuning-Bereich unverändert erhalten
- keine Änderung an FIT, Scorecard, Sync, Offline oder Verschlüsselung


v47 · Mobile Layout Preparation / Tourseiten
---------------------------------------------
- horizontalen Inhalts-Overflow auf iPhone beseitigt
- Reise-/Vorbereitungs-Kacheln werden unter 760 px konsequent einspaltig
- Definition-Listen und Tabellen dürfen umbrechen und erzeugen keine
  feste Desktop-Mindestbreite mehr
- Seitencontainer berücksichtigen iPhone Safe Areas
- Haupt- und Unter-Navigation bleiben bewusst horizontal scrollbar
- keine Änderung an Daten, FIT, Scorecard, Sync, Offline oder Verschlüsselung


v48 · iPhone/Safari iframe layout structurally fixed
-----------------------------------------------------
- iOS iframe expansion workaround at the shell level:
  width:1px + min-width/max-width:100%
- same containment inside Tour and Wartung srcdoc documents
- horizontal chapter/route navigation remains locally scrollable
  without widening the full page
- main-page switches now jump immediately to page top; inherited smooth
  scrolling is disabled for shell switching
- secondary chapter navigation retains its explicit smooth scrolling
- mobile hero grids remain compact at two columns when they genuinely fit
- no changes to FIT, Scorecard, Sync, Offline, encryption or stored data


v49 · Responsive Grundgerüst vereinheitlicht
---------------------------------------------
- v48 inner-document width hack entfernt; verursachte Wartungs-Desktop-
  Regression und abgeschnittene iPhone-Inhalte
- äußerer iOS iframe containment workaround bleibt erhalten
- einheitlicher zentrierter 1160-px Desktop-Container für alle Ansichten
- konsistente mobile Seitenränder auf Tour, Vorbereitung, Gepäck, Tuning,
  Daten, Tipps, Notfall und Wartung
- Hauptinhalt darf nie horizontal scrollen oder abgeschnitten werden
- nur Hauptnavigation und zweite Navigationsebene sind echte horizontale
  Touch-Scroller
- Navigation mit pan-x, momentum scrolling und scroll-snap stabilisiert
- mobile Mehrspalten-Grids und Tabellen brechen responsiv um
- keine Änderung an FIT, Scorecard, Sync, Offline, Verschlüsselung oder Daten


v50 · Scroll-/Responsive-Regressionen + Kontakt-Scorecards
-----------------------------------------------------------
- Shell neu geordnet: iframe ist der vertikale Scrollcontainer; Desktop-
  Mausrad/Trackpad wird von horizontalen Navigationsleisten nicht abgefangen
- touch-action/overscroll nur noch auf Touch-Geräten aktiv
- einheitliche Desktop-/Mobile-Gutters und shrinkbare Layouts
- Haupt- und Untermenü bleiben auf iPhone horizontal erreichbar
- Veranstalter & Guides als kompakte Kontakt-Scorecards neu gestaltet
- direkte Telefon-/Mail-/Web-Icons statt großer Aktionsbutton-Reihen
- Notfall-/Versicherungs-/JobRad-Links um klare Telefon/Mail-Affordances ergänzt
- QA-REGRESSION-CHECKLIST.md und qa-regression-matrix.json ergänzt
- keine Änderungen an FIT, Scorecard, Sync, Offline, Verschlüsselung oder Messdaten


v51 · Scrollkontexte, Navigation und Notfallkontakte
-----------------------------------------------------
- `scrollIntoView()` aus der Navi-Aktivierung entfernt; Buttons werden nur noch
  innerhalb ihres eigenen horizontalen Streifens zentriert
- `touch-action: pan-x` entfernt; vertikales Wischen über Navi-Leisten bleibt möglich
- Desktop-Mausrad über globaler Kopfzeile wird an den aktiven Inhaltsframe weitergereicht
- vertikales Mausrad über der zweiten Navi-Ebene scrollt ebenfalls den Inhalt
- v47-Responsive-Patch vollständig entfernt; nur noch ein aktuelles Designsystem aktiv
- Notruf-, Versicherungs-, JobRad- und Hotelkontakte mit kompakten Telefon-/Mail-Icons
- Veranstalter/Guides-Kontakt-Scorecard aus v50 bleibt erhalten
- FIT, Scorecard, Sync, Offline, Verschlüsselung und Messdaten unverändert


v52 · Interaktions-QA nach v51
-------------------------------
- globale Navi-Zentrierung auf tatsächlichen `.top-actions`-Scroller korrigiert
- robuste Rect-basierte Zentrierung für Haupt- und Untermenü
- Untermenü-Sprünge setzen horizontalen Dokument-Scroll explizit auf 0
- Guide-Telefonfelder mit stabilen IDs verknüpft; Telefonicons funktionieren
- eigener Notfallkontakt erhält dynamisches Telefonicon
- keine Änderung an FIT, Scorecard, Sync, Offline, Verschlüsselung oder Messdaten


v53 · einheitliches Sticky-Verhalten und Kontakt-UI
---------------------------------------------------
- Tour und Wartung verwenden jetzt dasselbe Sticky-Prinzip für die zweite Navigationsebene
- Wartungs-Fortschritt scrollt weg; Kapitelbuttons bleiben danach direkt unter dem globalen Header erreichbar
- blockierende Wheel-Weiterleitung aus den inneren Navigationen entfernt
- alte scrollIntoView-Ankerlogik entfernt; keine horizontalen Dokumentverschiebungen mehr
- overflow-x: clip statt hidden, damit Safari position:sticky nicht in einen falschen Scroll-Kontext setzt
- Veranstalter/Guides-Scorecard auf Desktop neu ausbalanciert
- Telefon/Mail/Web-Icons als monochrome CSS-Masken; rot ausschließlich für echte Notrufnummern
- FIT, Scorecard, Sync, Offline, Verschlüsselung und gespeicherte Daten unverändert
