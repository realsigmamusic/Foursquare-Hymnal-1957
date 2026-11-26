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
    \Staff
    midiInstrument = "choir aahs"
  }
}

\header {
  title = "1. O Worship The King"
  composer = "Francis Joseph Haydn"
  poet = "Sir Robert Grand"
}

global = {
  \key aes \major
  \time 3/4
  \tempo 4 = 100
}

soprano = \relative c'' {
  \global
  \partial 4 ees,4
  aes4 aes bes
  c2 aes4
  des4 des c
  bes2 ees,4
  aes4 aes bes \break
  c2 des4
  ees8. des16 c4 bes
  aes2 ees4
  ees4 ees f
  g4 g aes 
  bes4 bes c \break 
  des2 ees,4
  aes4 aes bes
  c4 c des
  ees8. des16 c4 bes
  \partial 2 aes2 
  \section
  aes2.
  aes2. \fine
}

alto = \relative c' {
  \global
  \partial 4 c4
  ees4 ees ees
  ees2 ees4
  des4 ees ees 
  ees2 ees8 des
  c4 ees ees \break
  ees2 f4
  ees8. f16 ees4 des
  c2 ees4
  ees4 ees d
  des4 des c
  bes4 ees aes \break
  g2 ees8 des
  c4 ees ees
  ees4 ees f
  ees8. f16 ees4 des
  \partial 2 c2
  \section
  des2.
  c2. \fine
}

tenor = \relative c' {
  \global
  \partial 4 aes4
  c4 aes g
  aes2 aes4
  aes4 bes aes
  g2 g4
  aes4 aes g \break
  aes2 aes4
  aes4 aes g
  aes2 g4
  g4 g aes
  bes4 bes aes
  g4 g aes \break
  bes2 g4
  aes4 aes g
  aes4 aes aes
  aes4 aes g
  \partial 2 aes2 
  \section
  f2.
  ees2.
}

bass = \relative c {
  \global
  \partial 4 aes4
  aes4 c ees
  aes2 c,4
  f4 g aes
  ees2 ees4
  aes,4 c ees \break
  aes2 f4
  c8. des16 ees4 ees
  aes,2 ees'4
  ees4 ees ees
  ees4 ees ees
  ees4 ees ees \break
  ees2 ees4
  aes,4 c ees
  aes4 aes f
  c8. des16 ees4 ees
  \partial 2 aes,2 
  \section
  des2.
  aes2. \fine
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
