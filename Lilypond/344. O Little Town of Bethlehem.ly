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
    \Staff
    midiInstrument = "choir aahs"
  }
}

\header {
  piece = "344"
  title = "O Little Town of Bethlehem"
  composer="Lewis H. Redner"
  poet = "Phillips Brooks"
}

global = {
  \key g \major
  \time 4/4
  \tempo 4 = 100
}

soprano = \relative c'' {
  \global
  \partial 4 b4
  b4 b ais b
  d4( c) e, a
  g4 fis8 g a4 d,
  b'2. \break b4
  b4 b e d
  d4 c e, a
  g4 fis8 g b4 a
  g2. \break b4
  b4 b a g
  fis2 fis4 fis
  e4 fis g a
  b2. b4 \break
  b4 b ais b
  d4 c e, e'
  d4 g, b4. a8
  \partial 2. g2. \section
  g1
  g1 \bar "|."
}

alto = \relative c' {
  \global
  \partial 4 d4
  d4 d cis d
  f4( e) c e
  d4 d d d 
  d2. \break d4
  d4 g gis gis 
  a4 e c e
  d4 d fis fis
  g2. \break g4
  g4 g fis e
  dis2 dis4 dis
  e4 fis g e
  fis2. g4 \break
  d4 d cis d
  e4 e c e8 fis
  g4 cis, d4. c8
  \partial 2. b2. \section
  c1
  b1 \bar "|."
}

tenor = \relative c' {
  \global
  \partial 4 g4
  g4 g g g
  gis4( a) a c
  b4 a8 b c4 c
  b2. \break g4
  g4 b b e
  e4 e e c
  b4 ais8 b d4 c
  b2. \break d4
  d4 b c cis
  dis2 dis4 b
  e,4 fis g e'
  dis2. d4 \break
  d4 b g g 
  gis4 a a c
  b4 a8 g g4. fis8
  \partial 2. g2. \section
  e1
  d1 \bar "|."
}

bass = \relative c {
  \global
  \partial 4 g'4
  g4 g g g
  c,4( c) c c
  d4 d d d
  g,2. \break g'4
  g4 f e e
  a4 a a, c
  d4. d8 d4 d
  g2. \break g4
  g4 g  a ais
  b2 b4 b,
  e4 fis g c
  b2. g4 \break
  g4 g g g
  c,4 c c c
  d4 e d4. d8
  \partial 2. g,2. \section
  c1
  g1 \bar "|."
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
