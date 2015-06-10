\version "2.14.2"

\include "AccordsJazzDefs.ly"
\include "deutsch.ly"

\layout { \context { \Score markFormatter = #format-mark-box-letters } }

\header {
    title = "naslov: ________________"
    composer = "autor: _____________"
    poet = "bpm: ____"
    }

\paper {
top-markup-spacing #'padding = #10
top-system-spacing #'padding = #17.5
markup-system-spacing #'padding = #10
markup-system-spacing #'stretchability = #5
indent = 0
}

\score {
  \new RhythmicStaff \with {\remove "Time_signature_engraver" }
{
      %\override MultiMeasureRest #'stencil = #ly:multi-measure-rest::percent
      %\override MultiMeasureRest #'thickness = #0.48
      \override Staff.TimeSignature #'break-visibility = #all-invisible

    %\tempo 4 = 
    \partial 8
    s8 \bar "||"
    \repeat unfold 5 { s1 } \break
    \repeat unfold 5 { s1 } \break
    \repeat unfold 5 { s1 } \break
    \repeat unfold 5 { s1 } \break
    \repeat unfold 5 { s1 } \break
    \repeat unfold 5 { s1 } \break
    \repeat unfold 5 { s1 } \break
    \repeat unfold 5 { s1 } \break
    \repeat unfold 5 { s1 } \break
    \repeat unfold 5 { s1 } \break
    \repeat unfold 5 { s1 } \break

  }
  \layout {
    \context {
      \RhythmicStaff
      \accepts "ChordNames"
    }
  }
}
