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
  piece = "345"
  title = "O Come, All Ye Faithful"
  composer="Wade's Cantus Diverai"
  poet = "Tr. by Frederick Oakeley"
}

global = {
  \key aes \major
  \time 4/4
  \tempo 4 = 100
}

soprano = \relative c'' {
  \global
  \partial 4 aes4
  aes2 ees4 aes
  bes2 ees,
  c'4 bes c des
  c2 bes4 aes \break
  aes2 g4 f
  g4( aes) bes c
  g2( f4.) ees8
  ees1
  ees'2 des4 c
  des2 c \break
  bes4 c aes bes
  g4.( f8) ees4 aes
  \section \sectionLabel "Refrain"
  aes4 g aes bes
  aes2 ees4 c' \break
  c4 bes c des
  c2 bes4 c
  des4 c bes aes
  g2 aes4( des)
  c2 bes4.( aes8)
  aes2. \bar "|."
}

alto = \relative c' {
  \global
  \partial 4 ees4
  ees2 ees4 c
  ees2 ees
  ees4 ees ees f
  ees2 ees4 c \break
  c4( d) ees d
  ees2 ees4 ees
  ees2( d4.) ees8
  ees1
  ees2 f8 g aes4
  f4 g aes2 \break
  ees4 ees f f
  ees2 ees4 ees
  \section \sectionLabel "Refrain"
  ees1 ~
  ees2. ees4 \break
  ees4 ees ees g
  aes2 g4 aes
  f8 g aes4 ees d
  ees2 ees4( f)
  ees2 des4.( c8)
  c2. \bar "|."
}

tenor = \relative c' {
  \global
  \partial 4 c4
  c2 aes4 aes
  g2 bes
  aes4 bes aes aes
  aes2 g4 aes \break
  aes2 bes4 bes
  bes4( aes) g f
  bes2( aes4.) g8
  g1
  c2 des4 ees
  des2 ees \break
  ees4 aes, c des
  bes4.( aes8) g4 c
  \section \sectionLabel "Refrain"
  c4 bes c des
  c2. aes4
  aes4 g aes bes
  aes2 ees4 ees'
  des4 ees bes bes
  bes2 aes
  aes2 g4.( aes8)
  aes2. \bar "|."
}

bass = \relative c {
  \global
  \partial 4 aes4
  aes2 c4 aes
  ees'2 g
  aes4 g aes des,
  ees2 ees4 f \break
  f2 ees4 bes
  ees4( c) g aes
  bes2( bes4.) ees8
  ees1
  c'2 bes4 aes
  bes2 aes \break
  g4 aes f des
  ees2 es4 r
  \section \sectionLabel "Refrain"
  r1
  r1 \break
  r1
  r2 r4 aes4
  bes4 aes g f
  ees4( des) c( des)
  ees2 ees4.( aes,8)
  aes2. \bar "|."

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
