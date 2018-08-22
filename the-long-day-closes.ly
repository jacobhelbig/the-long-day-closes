\version "2.19.59"

\header {
   title = "The Long Day Closes"
   composer = "Arthur Sullivan"
   arranger = "Jacob Helbig"
   tagline = ##f
}

global = { \key as \major \time 3/4 }

sM = \relative c'' {
	\clef "treble"
	as4\p as8 as g g | f2 f4 | f2 g4 | f es r8 es | c'4. c8 bes bes |
	as2 f4 | b2 d,4 | d es r8 es | as4 as g | f2 f8. f16 | f4( g) g |
	f es r8 es | es4. es8 e e | f2 f4 | es4\< as2 | as4(\> bes2) |
	as2.\! | r2 r4 | as4\p as8 as g g | f2 f4 | f2 g4 | f es r8 es\cresc |
	c'4. c8 bes bes | as2.\> | g4\p g4.-> g8 | g4 g r |
	g\f g8 g8 bes8. as16 | g4. c,8 des8. des16 | des4 c r |
	g'\p g8 g c8. bes16 | as2 as 4 | g f2 | es8.( f16) es4 r | r2 r8 es\p |
	bes'4. bes8 as as | g2. | c4\cresc c bes | as es\! r8 es |
	des'4. des8 c c | bes\> as g( f) es( f)\! | f4 es fes8\dim fes |
	fes4 es\! r4\fermata | as\pp as8 as g g | f2 f4 | f2 g4 | f es r8 es |
	es4. es8 e\cresc es | f2 f4 | es4( as) bes | bes c2\! | 
	des4\f des8 des d d | c2 es,4 | bes'2 b4 | b c4. c8\ff |
	es4. es8 des c | c4( bes4.) bes8\dim | c4. c8 c bes | bes4( as2) |
	as4\p as f | as2 f4 | as2.( | as4) r\fermata f\pp | es2. | as2. |
	as(\< | bes)\> | as\!\fermata \bar "|."
}

sL = \lyricmode {

}

aM = \relative c' {
	\clef "treble"
	es4\p es8 es es es | es2 es4 | d2 d4 | f es r8 es | es4.\< as8\> g g\! |
	f2 f4 | es( g) f | f es r8 es | es4 es es | es2 es8. es16 | d2 d4 |
	c c r8 ces | c8. as16 as4 as | as( bes) b | c2\< es4 | f(\> g2) |
	as2.\! | r2 r4 | es\p es8 es es es | es2 es4 | d2 d4 |
	f es r8 es\cresc | es4. as8 g g | f4(\> c d) | e\p f4.-> f8 | e4 e r |
	g4\f g8 g bes8. as16 | g4. c,8 des8. des16 | des4 c r |
}

aL = \lyricmode {

}

tM = \relative c {
	\clef "treble_8"

}

tL = \lyricmode {

}

bM = \relative c {
	\clef "bass"

}

bL = \lyricmode {

}

\new ChoirStaff <<
	\new Staff \with { instrumentName = #"S" }
	{ \global \sM }
	\addlyrics \sL

	\new Staff \with { instrumentName = #"A" }
	{ \global \aM }
	\addlyrics \aL

	\new Staff \with { instrumentName = #"T" }
	{ \global \tM }
	\addlyrics \tL

	\new Staff \with { instrumentName = #"B" }
	{ \global \bM }
	\addlyrics \tL

>>
