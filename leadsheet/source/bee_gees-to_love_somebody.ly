\version "2.14.2"

\include "../AccordsJazzDefs.ly"
\include "deutsch.ly"

\layout { \context { \Score markFormatter = #format-mark-box-letters } }

\header {
 title = "TO LOVE SOMEBODY"
 composer = "BEE GEES"
 }

ritam = {
 \override MultiMeasureRest #'stencil = #ly:multi-measure-rest::percent
 \override MultiMeasureRest #'thickness = #0.48

 \tempo 4 = 90
 \partial 8
 \stemDown
 c'8 |
 c4. c8 c4. c8 |
 c4 c2. |
 c4. c8 c4 r4 |
 c4. c8 c4 \afterGrace r4 { c8[ c8] } | \bar "|:"
 \mark \default
 \repeat percent 8 { c2 c8 c4 c8 } \bar ":|"
 \mark \default
 \repeat volta 2 { \repeat percent 3 { c8 c c c c c c c } | c8 c c c c8 r4. | \repeat percent 2 { c4. c8 c4 r4 } | }
 \alternative { { s1 } { \repeat unfold 2 { s1 } } }
 \bar "|."
 }

akordi = \chordmode {
e8 | a2 g | d4 a2. | a1 | a1 | a1 |
h1:m | d | a | g | a | e | d |
a1 | e | d | a | e | d | a | a |
e |
}

\score {
<<
 \new ChordNames { \akordi }
 \new RhythmicStaff { << \ritam >>}
 >>
 \layout {
 \context {
 \RhythmicStaff
 \accepts "ChordNames"
 }
 }
}
