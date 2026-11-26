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
    \overrideTimeSignatureSettings 6/8 #1/8 1,1  #'()
  }
}

\midi {
  \context {
    \ChordNames
    midiInstrument = "drawbar organ"
  }
}

\header {
  piece = "346"
  title = "Silent Night"
  composer="Franz Gruber"
  poet = "Joseph Mohr"
}

global = {
  \key c \major
  \time 6/8
  \tempo 4. = 33
}

soprano = \relative c'' {
  \global
  g8. a16 g8 e4.
  g8. a16 g8 e4.
  d'4 d16. b32 b4.
  c4 c16. g32 g4.
  a4 a8 \break c8. b16 a8
  g8. a16 g8 e4 r8
  a4 a8 c8.( b16) a8
  g8.( a16) g8 e4 r8 \break
  d'4 d8 f8. d16 b8
  c4.( e4) r8
  c8. g16 e8 g8. f16 d8
  c4. ~ c4 r8
  \section
  f2.
  e2. \bar "|."
}

alto = \relative c' {
  \global
  e8. f16 e8 c4.
  e8. f16 e8 c4.
  f4 f16. d32 d4.
  e4 e8 e4.
  f4 f8 \break a8. g16 f8
  e8. f16 e8 c4 r8
  f4 f8 a8.( g16) f8
  e8.( f16) e8 c4 r8 \break
  f4 f8 d8. f16 d8
  e4.( g4) r8
  e4 c8 b8. b16 b8
  c4. ~ c4 r8
  \section
  c2.
  c2. \bar "|."
}

tenor = \relative c' {
  \global
  c4 c8 g4.
  c4 c8 g4.
  b4 b8 g4.
  g4 g8 c4.
  c4 c8 \break a4 c8
  c8. c16 c8 c4 r8
  c4 c8 a8.( b16) c8
  c8.( c16) c8 g4 r8 \break
  b4 b8 b8. b16 g8
  g4.( c4) r8
  g4 g8 d8. d16 f8
  e4. ~ e4 r8
  \section
  a2.
  g2. \bar "|."
}

bass = \relative c {
  \global
  c4 c8 c4.
  c4 c8 c4.
  g'4 g8 g4.
  c,4 c8 c4.
  f4 f8 \break f4 f8
  c8. c16 c8 c4 r8
  f4 f8 f8.( f16) f8
  c8.( c16) c8 c4 r8
  g'4 g8 g8. g16 g8
  c,4.( c4) r8
  g'4 g8 g,8. g16 g8
  c4. ~ c4 r8
  \section
  g2.
  c2. \bar "|."
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