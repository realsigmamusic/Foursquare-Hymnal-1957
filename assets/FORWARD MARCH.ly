\version "2.26.0"

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
  c2 ~
  c4 ees,8 f
  <ees ges>4 <f aes> \break
  bes4 c
  aes2 ~
  aes4 f8 ( ges )
  aes4 bes
  c4 des
  c2 ~ \break
  c4 c8 des
  ees4 des
  f,4 g
  aes2 ~
  aes4 f8 ges
  aes4 bes \break
  c4 des
  c2 ~
  c4 ees,8 f
  ges4 aes
  c4 bes
  a2 ~
  a4 \pageBreak f4
  ges4.-> ges8->
  aes4-> aes->
  bes4-> c->
  des4 ees
  des2
  c2
  des2 ~ 
  des4 \section\sectionLabel "CHORUS" \break aes
  \time 4/4 des2-> ~ des4 f,
  aes2-> ~ aes4 f8 ges
  aes4 bes c4 des
  c2 ~ c4 \break aes
  ees'2-> ~ ees4 ges,
  bes2-> ~ bes4 ees,8. ( f16 )
  ges4 aes bes c
  aes2 ~ aes4 \break aes
  des2-> ~ des4 f,
  aes2-> ~ aes4 f
  bes4. f8 bes4 aes
  ges2 ~ ges4 \break f
  ges4. ges8 aes4 aes 
  bes4 c des ees
  des2-> c->
  des2 ~ des4 r \fine
}

alto = \relative c' {
  \global
  \partial 4 des8 ees
  <des f>4 <des f>
  <f aes>4 <f aes>
  r8 aes16 aes c aes c ees
  aes8 r c,, des
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
  des,8 aes' aes, aes'
  des,8 aes' aes, aes'
  des,8 aes' aes, aes'
  des,8 aes' aes, aes'
  des,8 aes' f fes
  ees8 aes aes, aes'
  ees8 ees, aes bes
  c'8 c, des des'
  ees,,8 ees' ees, ees'
  aes,4 ees'8 c
  aes8 aes, r4
  des'8 aes' aes, aes' \break
  des,8 aes' aes, aes'
  ees aes aes, aes'
  ees aes aes, aes'
  ees aes aes, aes'
  ees aes e e,
  f4 c
  f,4 \pageBreak bes'
  ees4. ees8
  f4 f
  ges4 ges
  bes4 beses8 ges
  aes2
  aes,2
  des2 ~
  des4 \break r
  r4 \tuplet 3/2 { aes8 bes c } des4 r
  r4 \tuplet 3/2 { aes8 bes c } des4 des
  des4 des f fes
  << { ees2 ~ ees4 } \\ { aes,8. bes16 c8. bes16 aes4 } >> \break r4
  r4 aes8. bes16 c4 r
  r4 aes'4 aes, aes8. aes16 
  aes4 aes aes aes
  des8. des16 ees8. ees16 f4 \break r
  r4 \tuplet 3/2 { aes,8 bes c } des4 r
  r4 \tuplet 3/2 { aes8 bes c } des4 c
  bes4. bes8 bes4 bes 
  << { ees2 ~ ees4 } \\ { ees8. bes16 ges8. bes16 } >> \break bes4
  ees4. ees8 f4 f 
  ges4 f bes, beses
  aes2 aes
  des2 ~ des4 r \fine
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