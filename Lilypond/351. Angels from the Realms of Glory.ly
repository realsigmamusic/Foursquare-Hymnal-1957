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
  title = "351. Angels, from the Realms of Glory"
  composer="Henry Smart"
  poet = "James Montgomery"
}

global = {
  \key c \major
  \time 4/4
  \tempo 4 = 100
}

soprano = \relative c'' {
  \global
  g4 e c' g
  e'4. d8 c4 g
  a4 a g c
  g4 f e2 \break
  g4 e c' g
  e'4. d8 c4 b
  c4 b a b8 c
  b4 a g2 \break
  d'4. d8 b4 g
  e'4. d8 c4 a
  f'4 e d c 
  c4 b c2 \bar "|."
}

alto = \relative c' {
  \global
  e4 c g' e
  g4. g8 g4 g
  c,4 c c c
  d4 b c2 \break
  e4 c g' g8 f
  e4. f8 e4 e 
  e4 e e e
  g4 fis g2 \break
  g4. g8 g4 g
  g4. e8 f4 f
  a4 g f e8 f
  g4. f8 e2 \bar "|."
}

tenor = \relative c' {
  \global
  c4 g g c
  c4. b8 c4 c
  a4 c g a
  g4 g g2 \break
  c4 c g g
  c4. b8 a4 gis
  a4 g e' d8 c
  d4 c b2 \break
  b4. b8 d4 b 
  c4. bes8 a4 c
  d4 g, a8 b c4
  d4 d c2 \bar "|."
}

bass = \relative c {
  \global
  c4 c e c
  g'4. f8 e4 e
  f4 f e a,
  b4 g c2 \break
  c'4 g e c8 b
  c4. d8 e4 e
  a4 e c a
  d4 d g,2 \break
  g'4. g8 g4 g
  c,4. c8 f4 f
  d4 e f8 g a4
  g4 g, c2 \bar "|."
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