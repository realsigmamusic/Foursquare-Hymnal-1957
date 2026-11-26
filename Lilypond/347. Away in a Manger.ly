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
    \overrideTimeSignatureSettings 3/4 #1/4 1,1,1  #'()
  }
}

\midi {
  \context {
    \Staff
    midiInstrument = "choir aahs"
  }
}

\header {
  title = "347. Away in a Manger"
  composer="Martin Luther"
  poet = "M.L."
}

global = {
  \key f \major
  \time 3/4
  \tempo 4 = 100
}

soprano = \relative c'' {
  \global
  \partial 4 c4
  c4. bes8 a4
  a4. g8 f4
  f4 e d
  c2 c4
  c4. d8 c4 \break
  c4 g' e
  d4 c f
  a2 c4
  c4. bes8 a4
  a4.( g8) f4 \break
  f4 e d 
  c2 c4
  bes'4. a8 g4
  a4 g f
  g4 d e
  f2 \bar "|."
}

alto = \relative c' {
  \global
  \partial 4 a'4
  a4. g8 f4
  c4. bes8 a4
  d4 c bes
  a2 c4
  bes4. bes8 bes4 \break
  bes4 bes bes
  bes4 a a
  c2 a'4
  a4. g8 f4
  c4.( bes8) a4 \break
  d4 c bes
  a2 c4
  g'4. f8 e4 
  f4 c a
  d4 bes bes
  a2 \bar "|."
}

tenor = \relative c' {
  \global
  \partial 4 r4
  f,2 r4
  f2.
  f2.
  f2.
  c2. ~ \break
  c2 r4
  f2 r4
  f2 r4
  f2 r4
  f2 r4 \break
  f2.
  f2 r4
  c2. 
  f2.
  bes,2 c4
  f2 \bar "|."
}

bass = \relative c {
  \global
  \partial 4 r4
  f,2 r4
  f2.
  bes2.
  f2.
  c'2. ~ \break
  c2 r4
  f,2 r4
  f2 r4
  f2 r4
  f2 r4 \break
  bes2.
  f2 r4
  c'2. 
  f2.
  bes,2 c4
  f,2 \bar "|."
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