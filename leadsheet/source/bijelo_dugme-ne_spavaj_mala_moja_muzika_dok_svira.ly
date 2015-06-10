\version "2.14.2"

\include "../AccordsJazzDefs.ly"
\include "deutsch.ly"

\layout { \context { \Score markFormatter = #format-mark-box-letters } }

\header {
 title = "NE SPAVAJ, MALA MOJA, MUZIKA DOK SVIRA"
 composer = "BIJELO DUGME"
 }

\paper {

markup-system-spacing #'padding = #5

}

x = { \override NoteHead #'style = #'cross }
o = { \revert NoteHead #'style }

ritam = {
 \override MultiMeasureRest #'stencil = #ly:multi-measure-rest::percent
 \override MultiMeasureRest #'thickness = #0.48

 \tempo 4 = 162
 \partial 4.
 \stemDown
 <<
 { s4. | \repeat unfold 13 { s1 } | s2 }
 \new CueVoice { \stemUp c8^"VOCAL" c c | c4 c c c | c8 c c c c c c c | c4_\markup { "GITARA" } c c c8 c ~ | c c c c c c r4 | c4 c8 c c4 c8 c ~ | c8 c c c c c c c | c4 c c c8 c ~ | c c c c c c r4 | c8 c c c c4 c8 c ~ | c8 c c c c c r4 | c8_"e" c c_"f#" c c4_"g" c8_"g#" c_"a" | r2. r8 c8 ~ | c8 c c c c4 c8 c | \time 2/4 r8 c8 c c | }
 >>
 \time 4/4
 \mark \default
 c4 r4 c r |
 r2 r8 \x c c c \o |
 \repeat unfold 8 { s1 } |
 c8 c c c c4 c8 c ~ |
 c1 |
 c8 c c c c4 c8 c |
 \times 2/3 { c8 \x c c } \times 2/3 { c8 c c } \times 2/3 { c8 c c } \times 2/3 { c8 c c } \o | \bar "||"
 \mark \default |
 \repeat percent 4 { c4. c8 ~ c4 c | r8 c4 c8 c c c c | }
 c4. c8 ~ c4 c |
 r8 c4. c2 |
 r8 c c4 c8 c ~ c4 |
 <<
 { \time 2/4 c8 s4. }
 \new CueVoice { \stemUp s8 c c c }
 >>
 \bar "||"



 }

akordi = \chordmode {
\set chordChanges = ##t
r4. | r1 | r1 | a | a | d |
d | a | a | e | e |
e1 | a1 | e1 | r2 | a1 | r1 |
a1 | a1 | d1 | d1 | a1 | a1 | e1 | e1 | e1 | a1 | e1 | \times 2/3 { a8 r4 } r2. |
e1 | e1 | a1 | a1 | e1 | e1 | a1 | a1 | d1 | d2 dis | s8 e8 d4 cis8 h4. | e8 r4. |
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

\markup { \huge { \box \bold "A" \tiny " " \box \bold "SOLO: A" " " \box \bold "B" " " \box \bold "A" } }

\score {
<<
 \new ChordNames { a1 a2 a1 }
 \new RhythmicStaff { \mark \markup { \box \bold "C" }  \time 6/4 \stemDown c4 \x c c \o c \x c c \o | \time 4/4 c1 \bar "|."}
 >>
 \layout {
 \context {
 \RhythmicStaff
 \accepts "ChordNames"
 }
 }
}

