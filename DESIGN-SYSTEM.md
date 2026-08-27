# Transalp PWA · Design-System

## Grundprinzip
Die App soll schnell erfassbar, ruhig und konsistent wirken. Fachinformationen stehen vor Dekoration.

## Navigation
- Globales Hauptmenü bleibt erreichbar.
- Zweite Navigationsebene ist pro Hauptbereich konsistent und horizontal scrollbar, ohne vertikales Scrollen zu blockieren.
- Aktiver Zustand ist eindeutig und kontrastreich.
- Sprünge positionieren das Ziel direkt und ohne unnötige Scroll-Animation.

## Karten
- Gleiche Kartentypen verwenden gleiche Abstände, Radien, Typografie und Aktionspositionen.
- Karten in einer Reihe bleiben auch bei fehlenden optionalen Inhalten ausgerichtet.
- Keine dekorativen Leerflächen ohne Informationswert.

## Kontakte und Aktionen
- Normale Telefon-, Mail-, Web- und Kartenaktionen: grün.
- Echte Notruf-Telefonaktionen: rot.
- Aktionen möglichst kompakt oben rechts, wenn die Karte dadurch übersichtlicher wird.
- Keine doppelten Icon-Mechanismen, z. B. Inline-SVG plus CSS-Pseudoelement.

## Typografie und Sprache
- Kurze, verständliche Sätze.
- Bike-Fachbegriffe dort verwenden, wo sie präzise und für die Bedienung nötig sind; bei weniger geläufigen Begriffen direkt erklären.
- Interne Modell- oder Entwicklerbegriffe nicht in die Nutzeroberfläche übernehmen.

## Bilder und Diagramme
- Bilder müssen zur dargestellten Information passen.
- Beschriftungen dürfen nicht über wichtigen Bildelementen oder Reglern liegen.
- Bei GRIP2-Doppelverstellern: äußerer Regler außerhalb des Rings beschriften, innerer Regler im Zentrum.
- Reifen-Visualisierung in Vorbereitung, Tuning und Wartung verwendet dieselbe kanonische Laufrad-Darstellung.
- Reifenkarten trennen Laufrad, Reifenbezeichnung und Druckwert in eigene Spalten; Reifenbezeichnungen werden nicht innerhalb eines Wortes getrennt.
- GRIP2-Kreisgrafiken liegen auf der optischen Mittelachse ihrer Karte; Richtungshinweise stehen separat rechts.
- Bei linearen Reglern dürfen sekundäre Aktionen die Skala nicht verkürzen: Slider und Skala bleiben zusammen, der aktuelle Wert steht rechts, externe Links darunter.

## Responsive-Regeln
- Content bei 390 und 430 px ohne horizontalen Dokument-Overflow.
- Grid-Spalten auf Mobile sauber auf eine Spalte reduzieren, wenn Lesbarkeit sonst leidet.
- Keine festen Mindestbreiten, die größer als ein iPhone-Viewport sind.
- Desktop-Inhalt bleibt zentriert und erhält konsistente Außenränder.

## Whitespace
Whitespace dient Hierarchie und Lesbarkeit. Große freie Flächen ohne erkennbare Funktion werden vermieden.
