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
    \overrideTimeSignatureSettings 3/4 #1/4 1,1,1 #'()
  }
}

\midi {
  \context {
    \ChordNames
    midiInstrument = "drawbar organ"
  }
}

\header {
  piece = "350"
  title = "The First Noel"
  composer="Traditional"
  poet = "Traditional"
}

global = {
  \key d \major
  \time 3/4
  \tempo 4 = 100
}

soprano = \relative c'' {
  \global
  \partial 4 fis,8 e
  d4.( e8) fis g
  a2 b8 cis
  d4( cis) b
  a2 b8( cis)
  d4( cis) b
  a4( b) cis 
  d4( a) g
  fis2 \break fis8 e
  d4.( e8) fis( g)
  a2 b8 cis
  d4( cis) b
  a2 b8( cis)
  d4( cis) b
  a4( b) cis 
  d4( a) g
  fis2 \break fis8 e
  \section \sectionLabel "Refrain"
  d4.( e8) fis g
  a2 d8 cis 
  b2 b4
  a2 ~ a4
  d4 cis b
  a4( b) cis
  d4( a) g
  fis2 \bar "|."
}

alto = \relative c' {
  \global
  \partial 4 d4
  a2 d4
  e2 e4
  a4( a) g
  fis2 d8( e)
  a4( fis) g
  a4( d,) g
  fis4( fis) e
  d2 \break cis4
  a2 d8( d)
  e2 e4
  a4( a) g
  fis2 d8( e)
  a4( fis) g
  a4( g) g
  fis4( fis) e
  d2 \break cis4
  \section \sectionLabel "Refrain"
  a2 d4
  cis2 fis4
  g2 g4
  fis2( a4)
  fis4 fis g
  fis2 g4
  fis2 e4
  d2 \bar "|."
}

tenor = \relative c' {
  \global
  \partial 4 a8 g
  fis2 d'4
  cis2 b4
  a4( a) b8 cis
  d2 b8( a)
  a4( a) cis
  d4( b) a
  a4( d) a
  a2 \break a8 g
  fis2 d'8( d)
  d4( cis) b
  a4( a) b8 cis
  d2 b8( a)
  a4( a) cis
  d2( e4)
  a,4( d) a
  a2 \break a8 g
  \section \sectionLabel "Refrain"
  fis2 b4
  a2 a4
  b4.( cis8) d e
  fis2( e4)
  d4 d d
  d2 g,4
  a2 a4
  a2 \bar "|."
  
}

bass = \relative c {
  \global
  \partial 4 d4
  d2 b4
  a4( a') g
  fis4( fis) g
  d2 g8( g)
  fis4( d) e
  fis4( g) e
  fis8( g a4) a
  d,2 \break a4
  d2 b8( b)
  a4( a') g
  fis4( fis) g
  d2 g8( g)
  fis4( d) e
  fis4( g) e
  fis8( g a4) a,
  d2 \break a4
  \section \sectionLabel "Refrain"
  d2 b4
  fis'2 d4
  g4.( a8) b cis
  d2( cis4)
  b4 a g
  d'4( d,) e
  fis8( g) a4 a,
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