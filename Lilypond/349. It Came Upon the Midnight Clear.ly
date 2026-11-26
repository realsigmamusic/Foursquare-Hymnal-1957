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
    \overrideTimeSignatureSettings 6/8 #1/8 2,1,2,1  #'()
  }
}

\midi {
  \context {
    \Staff
    midiInstrument = "choir aahs"
  }
}

\header {
  title = "349. It Came Upon the Midnight Clear"
  composer="Richard S. Willes"
  poet = "Edmund H. Sears"
}

global = {
  \key bes \major
  \time 6/8
  \tempo 4. = 33
}

soprano = \relative c'' {
  \global
  \partial 8 f,8
  d'4 c8 c bes g
  f4 g8 f4 f8
  g8 a bes bes c d
  c4.( c4) \break d8
  d4 c8 c bes g
  f4 g8 f4 f8
  g4 g8 a g f
  bes4.( bes4) \break d8
  d4 d,8 d e fis
  g4 a8 bes4 d8
  c8 bes a g a g
  f4.( f4) \break f8
  d'4 a8 c bes g
  f4 g8 f4 f8
  g4 g8 a g f
  bes4.( bes4) \bar "|."
}

alto = \relative c' {
  \global
  \partial 8 d8
  d4 d8 ees4 ees8
  d4 ees8 d4 d8
  ees4 ees8 e4 e8
  f4.( f4) \break f8
  d4 d8 ees4 ees8
  d4 ees8 d4 f8
  ees4 ees8 ees4 ees8
  d4.( d4) \break d8
  d4 d8 d4 d8
  d4 e8 d4 d8
  f4 f8 e4 e8
  f4.( f4) \break ees?8
  d4 d8 ees4 ees8
  d4 ees8 d4 f8
  ees4 ees8 ees4 ees8
  d4.( d4) \bar "|."
}

tenor = \relative c' {
  \global
  \partial 8 f,8
  f4 fis8 g4 a8
  bes4 f8 f4 bes8
  bes4 bes8 bes4 bes8
  a4.( a4) \break bes8
  f4 fis8 g4 a8
  bes4 f8 f4 bes8
  bes4 c8 c bes a
  bes4.( bes4) \break d,8
  d4 fis8 fis g a
  g4 fis8 g4 g8
  a8 d c bes c bes
  a4.( a4) \break a8
  bes4 fis8 g4 a8
  bes4 f8 f4 bes8
  bes4 c8 c bes a
  bes4.( bes4) \bar "|."
}

bass = \relative c {
  \global
  \partial 8 bes8
  bes4 bes8 bes4 bes8
  bes4 a8 bes4 bes8
  ees8 f g g4 c,8 
  f4.( f4) \break bes,8
  bes4 bes8 bes4 bes8
  bes4 a8 bes4 d8
  ees4 c8 f4 f8
  bes,4.( bes4) \break d8
  d4 d8 d4 c8
  bes4 d8 g4 bes,8
  c4 c8 c4 c8
  f4.( f4) \break f8
  bes,4 bes8 bes4 bes8
  bes4 a8 bes4 d8
  ees4 c8 f4 f8
  bes,4.( bes4) \bar "|."
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