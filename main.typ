
#let definition(title, body) = {
  // Hide the default figure caption globally or just for this kind
  show figure.where(kind: "definition"): set figure.caption(position: top)
  show figure.where(kind: "definition"): it => it.body 

  figure(
    block(
      width: 100%,
      stroke: 1pt + rgb("#00969b"),
      radius: 4pt,
      clip: true,
      stack(
        // Header
        block(
          fill: rgb("#00969b"),
          width: 100%,
          inset: 8pt,
          text(fill: white, weight: "bold", title)
        ),
        // Content
        block(
          fill: rgb("#d8eff1"),
          width: 100%,
          inset: 10pt,
          align(left, body)
        )
      )
    ),
    kind: "definition",
    supplement: [],
    caption: title, // This text appears in the outline
  )
}



#title()[IT Sicherheit Klausurrelevant]

#outline()

// --- Outline for Definitions ---
#outline(
  title: "Verzeichnis der Definitionen",
  target: figure.where(kind: "definition"),
)

#pagebreak()

= VL 1 - 2

== Symmetrische und Asymmetrische Verfahren

#definition("Schutzziele")[
 + Vertraulichkeit: Nachricht zwischen A und B kann nicht von O gelesen werden
 + Integrität: Nachricht zwischen A und B wird nicht verändert bzw. A und B können erkennen, ob Nachrichten verändert wurden
 + Datenauthentizität: B kann Nachricht von A zweifelsfrei A zuordnen
 + Instanzauthentizität: B kann die Identität von A zweifelsfrei feststellen
 + Nichtabstreitbarkeit: B kann Nachricht von A zweifelsfrei auch einer dritten Partei als Nachricht von A nachweisen
]

#definition("Symmetrische Verfahren")[
  - A und B nutzen den selben Schlüssel
  - Der Schlüssel muss zwischen A und B sicher ausgetauscht werden
  - vertraulich: O darf den Schlüssel nicht kennen
  - authentisch: A und B müssen wissen, wem sie vertrauliche Nachrichten schicken
]
#definition("Asymmetrische Verfahren")[
  - A und B haben jeweils ein Schlüsselpaare
  - A hat Schlüsselpaar (pkA, skA) (pkA: public key, skA : secret key)
  - B hat Schlüsselpaar (pkB, skB) (pkB: public key, skB : secret key)
  - Die öffentlichen Schlüssel müssen zwischen A und B sicher ausgetauscht werden
  - authentisch: A und B müssen wissen, wem sie vertrauliche Nachrichten schicken
  - O darf die Schlüssel pkA, pkB kennen (skA, skB aber nicht!)
]

== Absolute und praktische Sicherheit

#definition("Definition Sicherheitsniveau")[
  Ein Kryptoverfahren hat ein Sicherheitsniveau von $n in NN$ Bit, wenn ein Angreifer $2^n$ Versuche benötigt, das Verfahren zu brechen. \
  (Für Verschlüsselungsverfahren: den Klartext zu erhalten.)
]

#definition("Teilbarkeit")[
  Für $a, b in ZZ$ gilt: a teilt b, wenn es ein $c in ZZ$ mit $b = a dot c$ gibt.

  $5 | 0 = top$

  $0 | 5 = bot$
]

#definition("Kongruenz")[
  Wir sagen a ist kongruent zu b modulo n (schreiben $a equiv b mod n$), wenn n die Differenz b − a teilt.

  Andere Schreibweisen sind
    - $(a equiv b) mod n$
    - $a mod n equiv b mod n$
]
