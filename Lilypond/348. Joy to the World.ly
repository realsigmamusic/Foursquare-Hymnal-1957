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
    \overrideTimeSignatureSettings 2/4 #1/4 1,1 #'()
  }
}

\midi {
  \context {
    \Staff
    midiInstrument = "choir aahs"
  }
}

\header {
  piece = "348"
  title = "Joy to the World"
  composer="George F. Handel"
  poet = "Isaac Watte"
}

global = {
  \key d \major
  \time 2/4
  \tempo 4 = 80
}

soprano = \relative c'' {
  \global
  d4 cis8. b16
  a4. g8
  fis4 e
  d4. a'8
  b4. b8 \break
  cis4. cis8
  d4. \fermata d8
  d8 cis b a
  a8. g16 fis8 d'
  d8 cis b a
  a8. g16 fis8 \break fis
  fis8 fis fis fis16 g
  a4. g16 fis
  e8 e e e16 fis \break
  g4. fis16 e
  d8( d'4) b8
  a8. g16 fis8 g
  fis4 e
  d2 \bar "|."
}

alto = \relative c' {
  \global
  d4 d8. d16
  d4. e8
  d4 cis
  d4. a'8
  g4. g8 \break
  e4. e8
  fis4. \fermata fis8
  fis8 a g fis
  fis8. e16 d8 fis8
  fis8 a g fis
  fis8. e16 d8 \break d
  d8 d d d16 e
  fis4. e16 d
  cis8 cis cis cis16 d
  e4. d16 cis
  d8( fis4) g8
  fis8. e16 d8 e
  d4 cis
  d2 \bar "|."
}

tenor = \relative c' {
  \global
  fis,4 a8. g16 
  fis4. b8
  a4. g8
  fis4. d'8
  d4. d8 \break
  a4. a8
  a4. \fermata r8
  r2
  r2
  r2
  r4 r8 \break r
  r4 r8 a
  a8 a a a
  a2 ~
  a4. a8
  fis8( a4) d8
  d4. b8 
  a4 a8 g
  fis2 \bar "|."
}

bass = \relative c {
  \global
  d4 d8. d16
  d4. g,8
  a4 a
  d4. fis8
  g4. g8 \break
  a4. a8
  d,4. \fermata r8
  d2 ~
  d2 ~
  d2 ~
  d4. \break d8 ~
  d4. d8
  d8 d d d
  a4. a8 \break
  a8 a a a
  d4. d8
  d4. g,8
  a4 a
  d2 \bar "|."
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