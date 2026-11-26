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
    \ChordNames
    midiInstrument = "drawbar organ"
  }
}

\header {
  piece = "002"
  title = "Preach The Word"
  subtitle = \markup \normal-text "Copyright, 1935, by Echo Park Evang, ASS'N."
  composer = "Aimee Semple McPherson"
  poet = "A.S.M."
}

global = {
  \key bes \major
  \time 4/4
  \tempo 4 = 120
}

soprano = \relative c'' {
  \global
  \partial 8 d8 \f
  d4. cis8 d4. cis8
  d4 bes f2
  bes4 bes c bes
  a2. r8 f
  ees'4. d8 ees4. d8 \break
  ees4 c a4. ees'8
  ees4 ees f ees
  d2. r4
  d4. cis8 d4. cis8
  d4 bes f4. d'8 \break
  d4 d ees d
  g,1
  bes4. bes8 a4 bes
  f'4 d es d
  g,2 a
  bes2 ~ bes8 r16 \break \section d16 \mf d8. d16
  d2-> ~ d8 r16 d16 \mf d8. d16
  d2-> ~ d8 r8 d8. ( d16 ) \break
  d4-> c-> bes-> a->
  g2-> ~ g8 r16 c16 \mf c8. c16
  c2-> ~ c8 r16 c16 \mf c8. c16 \pageBreak
  c2-> ~ c4 c
  c4 ^\> bes a g \!
  f2 ~ f8 r8 \section \sectionLabel "Chorus" \bar "!" \tuplet 3/2 { f8 \mf e f }
  g2. \break \tuplet 3/2 { f8 e f }
  g2. \tuplet 3/2 { f8 ( e f ) }
  g4 f g gis
  a2. \tuplet 3/2 { f8 e f } \break
  g2. \tuplet 3/2 { f8 e f }
  g2. \tuplet 3/2 { f8 ( e f ) }
  g4 ^\< a bes c \!
  d2 ~ d4 \tuplet 3/2 { f,8 e f } \break
  g2. \tuplet 3/2 { f8 e f }
  g2. \tuplet 3/2 { f8 \f e f }
  g4 d' ees d \break
  g,2. \tuplet 3/2 { g8 ( fis g ) }
  bes4.-> bes8 ^\< a4 bes \!
  f'4-> d-> ees-> d->
  g,2-> a->
  bes2-> ~ bes4 r8 \fine
}

alto = \relative c' {
  \global
  \partial 8 f
  f4. e8 f4. e8
  f4 f d2
  d4 d f e
  ees?2. r8 f
  g4.gis8 a4. gis8 \break
  a4 a f4. f8
  a4 a a a
  f2. r4
  f4. e8 f4. e8
  f4 f d4. f8 \break
  f4 f g g
  g4 ( f ees2 )
  g4. g8 g4 g
  bes4 bes8 ( a ) g4 f
  e2 ees4 ( f )
  f2 ~ f8 r16 \section \break bes16 a8. g16
  fis8. fis16 \p f8. f16 fis8 r16 bes a8. g16
  fis8. fis16 \p f8. f16 fis8 r8 fis8. ~ fis16 \break
  fis4 fis g d
  d2 ~ d8 r16 a' g8. f16
  e8. e16 \p dis8. dis16 e8 r16 a g8. f16 \pageBreak
  e8. e16 \p dis8. dis16 e4 e
  e4 e e e
  c4 \p d ees8 r8 \section \sectionLabel "Chorus" \bar "!" \tuplet 3/2 { d4 d8 }
  d4 c8. c16 d4 \break \tuplet 3/2 { d4 d8 }
  d4 cis8. cis16 d4 \tuplet 3/2 { d4 d8 }
  d4 d d d
  ees2. \tuplet 3/2 { d4 d8 } \break
  ees?4 d8. d16 ees4 \tuplet 3/2 { c4 c8 }
  ees?4 d8. d16 ees4 c
  ees4 ees ees ees
  f2 ~ f4 \tuplet 3/2 { d4 d8 } \break
  d4 cis8. cis16 d4 \tuplet 3/2 { d4 d8 }
  d4 cis8. cis16 d4 \tuplet 3/2 { d4 d8 }
  f4 f g g \break
  ees4 ( f ees ) ees
  g4. g8 g4 g
  bes bes8 ( a ) g4 f
  e2 ees4 ( f )
  f2 ~ f4 r8 \fine
}

tenor = \relative c' {
  \global
  \partial 8 bes8
  bes4. bes8 bes4. bes8
  bes4 d bes2
  bes4 f bes g
  f2. r8 f
  c'4. b8 c4. b8 \break
  c4 ees ees4. c8
  c4 c d c
  << { bes2. r4 } \\ { r4 a g f } >>
  bes4. bes8 bes4. bes8
  bes4 d bes4. bes8 \break
  bes4 c b bes
  c4 ( b c2 )
  bes4. c8 cis4 c
  d4 bes b b
  bes2 c4 ( ees )
  d2 ~ d8 r16 \section \break r16 r4
  r8. c16 b8. b16 c8 r16 r r4
  r8. c16 b8. b16 c8 r8 c8. ~ c16 \break
  d4 d cis c
  bes2 ~ bes8 r16 r r4
  r8. bes16 a8. a16 bes8 r16 r r4 \pageBreak
  r8. bes16 a8. a16 bes4 bes
  bes4 d c bes
  a4 bes c8 r8 \section\sectionLabel "Chorus" \bar "!" r4
  r4 e,8. e16 d4 \break r4
  r4 e8. e16 f4 r
  f4 bes bes f
  f2. r4 \break
  r4 g8. g16 a4 r4
  r4 g8. g16 a4 a
  a4 c c c
  bes2 ~ bes4 r4 \break
  r4 e,8. e16 f4 r
  r4 e8. e16 f4 \tuplet 3/2 { bes4 bes8 }
  d4 c b b \break
  c4 ( b c ) bes
  bes4. c8 cis4 c
  d4 bes b b
  bes2 c4 ( ees )
  d2 ~ d4 r8 \fine
}

bass = \relative c {
  \global
  \partial 8 bes8
  bes4. bes8 bes4. bes8
  bes4 bes bes2
  bes4 bes d des
  c2. r8 f
  f4. f8 f4. f8 \break
  f4 f f4. f8
  f4 f f f
  bes,2. s4
  bes4. bes8 bes4. bes8
  bes4 bes bes4. bes'8 \break
  bes4 aes g f
  ees4 ( d c2 )
  ees4. ees8 e4 e
  f4 f g g,
  c2 f2
  bes2 ~ bes8 r16 \section \break r16 r4
  r8. a16 gis8. gis16 a8 r16 r r4
  r8. a16 gis8. gis16 a8 r8 d,8. ~ d16 \break
  d4 d e fis
  << { g2 ~ g8 r16 r r4 } \\ { r8. d16 \tuplet 3/2 { ees8 d bes } g8 r16 r r4 } >>
  r8. g'16 fis8. fis16 g8 r16 r r4 \pageBreak
  r8. g16 fis8. fis16 g4 c,
  g'4 c, c c
  f2 ~ f8 r8 \section\sectionLabel "Chorus" \bar "!" r4
  r4 bes,8. bes16 bes4 \break r4
  r4 bes8. bes16 bes4 r4
  bes4 bes bes b
  c2. r4 \break
  r4 b8. b16 c4 r4
  r4 b8. b16 c4 c
  f4 f g a bes2 ~ bes4 r4 \break
  r4 bes,8. bes16 bes4 r4
  r4 bes8. bes16 bes4 \tuplet 3/2 { bes4 bes8 }
  bes'4 aes g f
  ees4 ( d c ) ees
  ees4. ees8 e4 g
  f4 bes g g,
  c2 f
  bes,2 ~ bes4 r8 \fine
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
