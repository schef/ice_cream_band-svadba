\version "2.14.2"

\include "AccordsJazzDefs.ly"
\include "deutsch.ly"

\layout { \context { \Score markFormatter = #format-mark-box-letters } }

\header {
    title = "KAD ŽENA ZAVOLI"
    composer = "TONY CETINSKI"
    }

\score {
  \new RhythmicStaff
%\with { 
%\override StaffSymbol #'line-count = #2
%}
{
      \override MultiMeasureRest #'stencil = #ly:multi-measure-rest::percent
      \override MultiMeasureRest #'thickness = #0.48

    \tempo 4 = 180
    \partial 8
    c'8
    \chords { \mark \default d1:m7 | b1:min7.5- | c2 g2 | c1 | c1 \bar "||" \break 
    \mark \default \repeat volta 2 { c1 } \alternative { { c1 } { g1 } }
    gis:dim
    
    } R1 R1 \chords {
    c1 \mark \markup { \tiny "PRŽI" }
    gis:dim7 \bar "|."
    

  }
  }
  \layout {
    \context {
      \RhythmicStaff
      \accepts "ChordNames"
    }
  }
}
