\version "2.27.1"

\paper {
  #(set-paper-size "a4")
}

\header {
  title = "FORWARD MARCH"
  subtitle = \markup \normal-text "Copyright, 1935, by Echo Park Evang, ASS'N."
  composer = "Aimee Semple McPherson"
  poet = "A.S.M."
}

global = {
  \key des \major
  \time 2/4
}

soprano = \relative c'' {
  \global
  \partial 4 f,8 ges
  aes4 bes
  c4 des
  <c aes ges>2 ~
  <c aes ges>4 ees,8 f
  <ees ges>4 <f aes> \break
}

alto = \relative c' {
  \global
  \partial 4 des8 ees
  <des f>4 <des f>
  <f aes>4 <f aes>
  r8 aes16 aes c aes c ees
  s8 aes c,, des
  c2
}

tenor = \relative c' {
  \global
  \partial 4 r4
}

bass = \relative c {
  \global
  \partial 4 r4
  des8 f aes, f'
  des8 f aes, f'
  ees8 aes aes, aes'
  ees8 aes aes, aes'
  ees8 aes aes, aes' \break
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Staff <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout { 
    indent = 0\mm #(layout-set-staff-size 17.5)
    \context {
    \Staff
      \consists "Merge_rests_engraver"
    }
    \context {
      \Lyrics
      \override LyricText.self-alignment-X = #LEFT
    }
  }
  \midi { \tempo 4 = 120 }
}