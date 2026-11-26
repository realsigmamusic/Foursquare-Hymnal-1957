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
  title = "Praise God, From Whom All Blessings Flow"
  subtitle = "Doxology"
  composer = "Louis Bourgeois"
  poet = "Thomas Ken"
}

global = {
  \key g \major
  \time 4/4
  \tempo 4 = 90
}

soprano = \relative c'' {
  \global
  \partial 4 g4
  g4 fis e d
  g4 a b \fermata b
  b4 b a g
  c4 b a \fermata \break g
  a4 b a g
  e4 fis g \fermata d'
  b4 g a c
  b4 a g \fermata \fine
}

alto = \relative c' {
  \global
  \partial 4 d4
  d4 d b b
  b4 d d \fermata d
  d4 g fis g
  g4 g fis \fermata \break g
  fis4 g fis d
  e4 d d \fermata d
  d4 g fis e8 fis
  g4 fis g \fermata \fine
}

tenor = \relative c' {
  \global
  \partial 4 b4
  b4 a g fis
  g4 fis g \fermata g
  b4 d c b
  e4 d d \fermata \break b
  d4 d d d
  c8 b a4 b \fermata b
  g4 b d e
  d4 d8 c b4 \fermata \fine
}

bass = \relative c {
  \global
  \partial 4 g'4
  g4 d e b
  e4 d g, \fermata g'
  g4 g d e
  c4 g d' \fermata \break e
  d4 g d b
  c4 d g, \fermata g'
  g4 e d a
  b8 c d4 g, \fermata \fine
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

