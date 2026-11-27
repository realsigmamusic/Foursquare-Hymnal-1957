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
  title = "352. While Shepherds Watched Their Flocks by Night"
  composer="George F. Handel"
  poet = "Nahum Tate"
}

global = {
  \key d \major
  \time 4/4
  \tempo 4 = 100
}

soprano = \relative c'' {
  \global
  \partial 4 fis,8. g16
  a4 d cis b
  a4 d,8. e16 fis4 fis8. g16
  a4 a a g8 fis
  fis4( e) r cis'8 d \break
  e4 a, g g
  g4 fis8 e fis4 d'8 cis
  b4 a g fis
  b4( a) r e'4
  a,4 d fis, e
  d2. \bar "|."
}

alto = \relative c' {
  \global
  \partial 4 d8. cis16
  d4 fis e8 fis g4
  d4 d8. cis16 d4 d
  d4 d d8 fis e d
  d4( cis) r a' \break
  a8 g fis4 e cis
  d4 d d fis
  g4 fis d d
  d2 r4 e
  fis4 d8.  e16 d4 cis
  d2. \bar "|."
}

tenor = \relative c' {
  \global
  \partial 4 a4
  a4 a a b8 cis
  d4 a a a
  a4 fis d' b
  a2 r4 e' \break
  e4 d8 c b4 a
  a4 a8 g a4 d,
  d4 d'8 cis b4 a
  g4( fis) r b8. cis16
  d4 a8. b16 a4. g8
  fis2. \bar "|."
}

bass = \relative c {
  \global
  \partial 4 d8. e16
  fis4 d a' g
  fis fis8. e16 d4 d8. e16
  fis4 d fis g
  a2 r4 a,8 b \break
  cis4 d e a,
  d4 d d d
  d4 d d d
  d2 r4 g
  fis4 fis8. g16 a4 a,
  d2. \bar "|."
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