\version "2.26.0"

\paper {
  #(set-paper-size "a4")
}

\layout {
  indent = 0
  \context {
    \Score
    tempoHideNote = ##t
  }
  \context {
    \Staff
    \consists "Merge_rests_engraver"
  }
  \context {
    \Score
    \overrideTimeSignatureSettings 4/4 #1/4 1,1,1,1 #'()
  }
}

\midi {
  \context {
    \ChordNames
    midiInstrument = "drawbar organ"
  }
}

\header {
  piece = "353"
  title = "Hark! The Herald Angels Sing"
  composer="Felix Mendelssohn Bartholdy"
  poet = "Charles Wesley"
}

global = {
  \key g \major
  \time 4/4
  \tempo 4 = 80
}

soprano = \relative c'' {
  \global
  \partial 2 d,4 g
  g4. fis8 g4 b
  b4( a) d d
  d4. c8 b4 a
  b2 \break d,4 g
  g4. fis8 g4 b
  b4( a) d a
  a4. fis8 fis4 e 
  d2 \break d'4 d
  d4 g, c b
  b4( a) d d
  d4 g, c b
  b4( a) \break e'4 e
  e4 d c b
  c2 a4 b8 c
  d4. g,8 g4 a
  b2 \break e4. e8
  e4 d c b
  c2 a4 b8 c
  d4. g,8 g4 a
  g2 \section \bar "!" g2
  g2 \bar "|."
}

alto = \relative c' {
  \global
  \partial 2 d4 d
  d4. d8 d4 g
  g4( fis) g fis
  e4 a g fis
  g2 \break d4 d
  d4. d8 b4 g'
  g2 fis4 e
  fis4. d8 d4 cis 
  d2 \break d4 d
  d4 g a g
  g4( fis) d d
  d4 g a g
  g4( fis) \break c' c
  c4 b a gis
  a2 fis4 fis
  g4. d8 d4 fis
  g2 \break c4 c
  c4 b a gis
  a2 fis4 fis
  g4. d8 d4 fis
  d2 \section \bar "!" e
  d2 \bar "|."
}

tenor = \relative c' {
  \global
  \partial 2 b4 b
  b4. a8 g4 d'
  d2 d4 d
  e4 e d d 
  d2 \break b4 b
  b4. a8 g4 d'
  e2 b4 a
  a4. a8 b4 g
  fis2 \break d'4 d
  d4 d d d
  d2 d4 d
  d4 d d d
  d2 \break e4 e
  e4 e e e
  e2 d4 d
  d4. b8 g4 c
  b2 \break <c e>4 <c e>
  <c e>4 <b d> <a c> <gis b>
  c2 d4 d
  d4. b8 b4 c
  b2 \section \bar "!" c
  <g b>2 \bar "|."
}

bass = \relative c {
  \global
  \partial 2 g'4 g
  g4 d b g 
  d'2 b4 b
  c4 c d d 
  g2 \break g4 g
  g4 d e d
  cis2 b4 cis
  d4 fis, g a
  d2 \break d'4 d
  d4 b fis g
  d2 d'4 d
  d4 b fis g
  d2 \break c4 c
  c4 c c e
  a2 c4 c 
  b4 g d d
  g,2 \break c
  c2 c4 e
  a4( g) fis a
  b4 g d d
  g2 \section \bar "!" c,2
  g2\bar "|."
  
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff <<
        \clef treble
        \new Voice = "soprano" { \voiceOne \soprano }
        \new Voice = "alto" { \voiceTwo \alto }
      >>
      \new Staff <<
        \clef bass
        \new Voice = "tenor" { \voiceOne \tenor }
        \new Voice = "bass" { \voiceTwo \bass }
      >>
    >>
  >>
  \layout { }
}
\score {
  \unfoldRepeats
  \new ChoirStaff <<
    \new Staff \new Voice = "Soprano" { \soprano }
    \new Staff \new Voice = "Contralto" { \alto }
    \new Staff \new Voice = "Tenor" { \tenor }
    \new Staff \new Voice = "Baixo" { \bass }
  >>
  \midi{ }
}