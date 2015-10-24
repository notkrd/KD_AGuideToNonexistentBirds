
/*
 * A Guide to Nonexistent Birds
 * Edited by Kavi Duvvoori
 */


/*
 * BIRD
 * Pablo Neruda
 *
 * It was passed from one bird to another,
 * the whole gift of the day.
 * The day went from flute to flute,
 * went dressed in vegetation,
 * in flights which opened a tunnel
 * through which the wind would pass
 * to where birds were breaking open
 * the dense blue air -
 * and there, night came in.
 *
 * When I returned from so many journeys,
 * I stayed suspended and green
 * between sun and geography -
 * I saw how wings worked,
 * how perfumes are transmitted
 * by feathery telegraph,
 * and from above I saw the path,
 * the springs and the roof tiles,
 * the fishermen at their trades,
 * the trousers of the foam;
 * I saw it all from my green sky.
 * I had no more alphabet
 * than the swallows in their courses,
 * the tiny, shining water
 * of the small bird on fire
 * which dances out of the pollen
 *
 */

% NOTE: We can not yet guarantee that any birds described in this guide
% do not, in fact, exist. We deeply and sincerely apologize for any
% incponvenience this causes and, pending venture capital funding,
% are working on developing a solution to this problem.

/*
 * THIRTEEN WAYS OF LOOKING AT A BLACKBIRD
 * Wallace Stevens
 *
 * I
 * Among twenty snowy mountains,
 * The only moving thing
 * Was the eye of the blackbird.
 * ...
 */

% We will start with a few names necessary for any bird watcher (or
% bird-imaginer)


birdFamilies(["thrush","egret","hawk","duck","grebe","coot","swallow","vulture","gull","flycatcher","swift"]).
colors(["brown","red","golden","crimson","white","black","gray","yellow","violet"]).
birdParts(["tail","wing","head","beak","throat","shoulder","breast","crest","neck"]).
climes(["tropical","arctic","coastal","prairie","mountain"]).
cardDirs(["north","south","east","west"]).
rarities(["common"]).

/*...
 * II
 * I was of three minds,
 * Like a tree
 * In which there are three blackbirds
 * ...
 */

%And learn how to use them

birdFamily(FAMILY):- birdFamilies(THE_FAMS), member(FAMILY,THE_FAMS).
color(COLOR):- colors(THE_COLORS), member(COLOR,THE_COLORS).
birdPart(BIRD_PART):- birdParts(THE_BPARTS), member(BIRD_PART,THE_BPARTS).
clime(CLIME):- climes(THE_CLIMES), member(CLIME,THE_CLIMES).
cardDir(CARD_DIR):- cardDirs(THE_CARD_DIRS), member(CARD_DIR,THE_CARD_DIRS).
rarity(RARITY):- rarities(THE_RARITIES), member(RARITY,THE_RARITIES).

/*...
 * III
 * The blackbird whirled in the autumn winds.
 * It was a small part of the pantomime.
 * ...
 */

% But, standing in rain-pants in some swamp, hopeful binoculars held
% chest high, what wings will you spot, under bush or over roof?


birdFamily_seed("thrush",SEED):- SEED < 0.15.
birdFamily_seed("egret",SEED):- SEED >= 0.15, SEED < 0.2.
birdFamily_seed("hawk",SEED):- SEED >= 0.2, SEED < 0.35.
birdFamily_seed("duck",SEED):- SEED >= 0.35, SEED < 0.45.
birdFamily_seed("grebe",SEED):- SEED >= 0.45, SEED < 0.5.
birdFamily_seed("coot",SEED):- SEED >= 0.5, SEED < 0.55.
birdFamily_seed("swallow",SEED):- SEED >= 0.55, SEED < 0.75.
birdFamily_seed("vulture",SEED):- SEED >= 0.75, SEED < 0.8.
birdFamily_seed("gull",SEED):- SEED >= 0.8, SEED < 0.85.
birdFamily_seed("flycatcher",SEED):- SEED >= 0.85, SEED < 0.90.
birdFamily_seed("swift",SEED):- SEED >= 0.9.

color_seed("brown",SEED):- SEED < 0.35.
color_seed("red",SEED):- SEED >= 0.35, SEED < 0.5.
color_seed("golden",SEED):- SEED >= 0.5, SEED < 0.6.
color_seed("crimson",SEED):- SEED >= 0.6, SEED < 0.65.
color_seed("white",SEED):- SEED >= 0.65, SEED < 0.7.
color_seed("black",SEED):- SEED >= 0.7, SEED < 0.75.
color_seed("gray",SEED):- SEED >= 0.75, SEED < 0.85.
color_seed("yellow",SEED):- SEED >= 0.85, SEED < 0.95.
color_seed("violet",SEED):- SEED >= 0.95.

birdPart_seed("tail",SEED):- SEED < 0.15.
birdPart_seed("wing",SEED):- SEED >= 0.15, SEED < 0.2.
birdPart_seed("head",SEED):- SEED >= 0.2, SEED < 0.25.
birdPart_seed("beak",SEED):- SEED >= 0.25, SEED < 0.4.
birdPart_seed("throat",SEED):- SEED >= 0.4, SEED < 0.55.
birdPart_seed("shoulder",SEED):- SEED >= 0.55, SEED < 0.7.
birdPart_seed("breast",SEED):- SEED >= 0.7, SEED < 0.8.
birdPart_seed("crest",SEED):- SEED >= 0.8, SEED < 0.9.
birdPart_seed("neck",SEED):- SEED >= 0.9.

clime_seed("tropical",SEED):- SEED < 0.15.
clime_seed("arctic",SEED):- SEED >= 0.15, SEED < 0.3.
clime_seed("coastal",SEED):- SEED >= 0.3, SEED < 0.55.
clime_seed("prairie",SEED):- SEED >= 0.55, SEED < 0.7.
clime_seed("forest",SEED):- SEED >= 0.7, SEED < 0.85.
clime_seed("mountain",SEED):- SEED >= 0.85.

cardDir_seed("north",SEED):- SEED < 0.25.
cardDir_seed("south",SEED):- SEED >= 0.25, SEED < 0.5.
cardDir_seed("east",SEED):- SEED >= 0.5, SEED < 0.75.
cardDir_seed("west",SEED):- SEED >= 0.75.

rarity_seed("common",SEED):- SEED < 1.

/*...
 * IV
 * A man and a woman are one.
 * A man and a woman and a
 * blackbird Are one. ..
 *
 * (I wanted to change the "man" and "woman" in that one to [PERSON],
 * but .. i don't know .. it would have been dishonest i guess; i guess
 * it's a useful reminder that you can watch so many birds' wings and
 * still be stuck in human time and things)
 */

% Build the birdhouse, and paint it; buy from Lowe's or Home Depot a bag
% of seeds; fill the little bowl with water; fill the floor with the
% seeds; see if something comes; hope it isn't a squirrel.

a_birdFamily(BIRD_FAMILY):- random(S), birdFamily(BIRD_FAMILY), birdFamily_seed(BIRD_FAMILY,S).
a_color(COLOR):- random(S), color(COLOR), color_seed(COLOR,S).
a_birdPart(BIRD_PART):- random(S), birdPart(BIRD_PART), birdPart_seed(BIRD_PART,S).
a_clime(CLIME):- random(S), clime(CLIME), clime_seed(CLIME,S).
a_cardDir(CARD_DIR):- random(S), cardDir(CARD_DIR), cardDir_seed(CARD_DIR,S).
a_rarity(RARITY):- random(S), rarity(RARITY), rarity_seed(RARITY,S).


/*
 * ...
 * V
 * I do not know which to prefer,
 * The beauty of inflections
 * Or the beauty of innuendoes,
 * The blackbird whistling
 * Or just after.
 * ...
 */

%Consult a guidebook: many have useful tables

attribute_desc(family,[FAMILY_OF_THAT_BIRD_ITS_GRANDPARENTS_AND_NEICES]):-
	birdFamily(FAMILY_OF_THAT_BIRD_ITS_GRANDPARENTS_AND_NEICES).
attribute_desc(colored_part,[PART_OF_A_BIRD,COLOR_OF_A_PART_OF_THAT_BIRD]):-
	birdPart(PART_OF_A_BIRD), color(COLOR_OF_A_PART_OF_THAT_BIRD).
attribute_desc(clime,[THEIR_PREFERRED_KIND_OF_WIND_AND_VEGETATION]):-
	clime(THEIR_PREFERRED_KIND_OF_WIND_AND_VEGETATION).
attribute_desc(cardDir,[THAT_BIRDS_PREFERENCE_IN_COMPASSES]):-
	a_cardDir(THAT_BIRDS_PREFERENCE_IN_COMPASSES).

/*
 * VI
 * Icicles filled the long window
 * With barbaric glass.
 * The shadow of the blackbird
 * Crossed it, to and fro.
 * The mood
 * Traced in the shadow
 * An indecipherable cause.
 */

% Now sit behind your backyard window, grap some scrap paper, an
% extra page accidentally printed, find a pencil, and start sketching


an_attribute_desc(family,[A_FAMILY_FOR_THAT_BIRD_AUNTS_UNCLES_SIBLINGS]):-
	a_birdFamily(A_FAMILY_FOR_THAT_BIRD_AUNTS_UNCLES_SIBLINGS),
	attribute_desc(family,[A_FAMILY_FOR_THAT_BIRD_AUNTS_UNCLES_SIBLINGS]).
an_attribute_desc(colored_part,[A_PART_OF_THAT_BIRD, A_COLOR_OF_A_PART_OF_THAT_BIRD]):-
	a_birdPart(A_PART_OF_THAT_BIRD), a_color(A_COLOR_OF_A_PART_OF_THAT_BIRD),
	attribute_desc(colored_part,[A_PART_OF_THAT_BIRD, A_COLOR_OF_A_PART_OF_THAT_BIRD]).
an_attribute_desc(clime,[A_PREFERRED_KIND_OF_WIND_AND_VEGETATION]):-
	a_clime(A_PREFERRED_KIND_OF_WIND_AND_VEGETATION),
	attribute_desc(clime, [A_PREFERRED_KIND_OF_WIND_AND_VEGETATION]).
an_attribute_desc(cardDir,[HOLD_A_COMPASS_UNDER_IT]):-
	a_cardDir(HOLD_A_COMPASS_UNDER_IT),
	attribute_desc(cardDir,[HOLD_A_COMPASS_UNDER_IT]).

/* ...
 * VII
 * O think men of Haddam,
 * Why do you imagine golden birds?
 * Do you not see how the blackbird
 * Walks around the feet
 * Of the women about you
 * ...
 * (same conflicts and confusions present themselves; the same cheap
 * and unsatisfying answer)
 */

% Walk towards the feathery thing a step at a time, crunching no twigs;
% place the binoculars over your eyes, and twiddle the dials until you
% can distinguish leaf from leaf, and feather from feather

that_piece_of_that_bird_in_that_color(THAT_PIECE_OF_THAT_BIRD,[THAT_PIECE_OF_THAT_BIRD,IN_THAT_COLOR]):-
	birdPart(THAT_PIECE_OF_THAT_BIRD),
	color(IN_THAT_COLOR),
	attribute_desc(colored_part,[THAT_PIECE_OF_THAT_BIRD,IN_THAT_COLOR]).

colors_of_parts_of_that_bird(THE_PIECES_IN_COLORS):-
	birdParts(THE_PIECES_OF_THAT_BIRD),
	maplist(that_piece_of_that_bird_in_that_color,THE_PIECES_OF_THAT_BIRD,THE_PIECES_IN_COLORS).

bird(BIRD):-
	attribute_desc(family,[ITS_FAMILY]),
	attribute_desc(clime,[WHERE_IT_LIKES_TO_ROOST]),
	colors_of_parts_of_that_bird(THE_COLORS_OF_IT),
	append([[ITS_FAMILY],[WHERE_IT_LIKES_TO_ROOST],[THE_COLORS_OF_IT]],BIRD).

/*
 * VIII
 * I know noble accents
 * And lucid, inescapable rhythms;
 * But I know, too,
 * That the blackbird is involved
 * In what I know.
 */

that_piece_of_that_bird_in_a_color(THAT_PIECE_OF_THAT_BIRD,[THAT_PIECE_OF_THAT_BIRD,IN_A_COLOR]):-
	birdPart(THAT_PIECE_OF_THAT_BIRD),
	a_color(IN_A_COLOR),
	attribute_desc(colored_part,[THAT_PIECE_OF_THAT_BIRD,IN_A_COLOR]).

colors_of_parts_of_a_bird(THE_PIECES_IN_SOME_COLORS):-
	birdParts(THE_PIECES_OF_THAT_BIRD),
	maplist(that_piece_of_that_bird_in_a_color,THE_PIECES_OF_THAT_BIRD,THE_PIECES_IN_SOME_COLORS),
	colors_of_parts_of_that_bird(THE_PIECES_IN_SOME_COLORS).

a_bird(A_BIRD):-
	an_attribute_desc(family,[A_FAMILY_FOR_IT]),
	an_attribute_desc(clime,[SOME_PLACES_TO_ROOST]),
	colors_of_parts_of_a_bird(THE_COLORS_OF_IT),
	append([[A_FAMILY_FOR_IT],[SOME_PLACES_TO_ROOST],[THE_COLORS_OF_IT]],A_BIRD).


/*
 * IX
 * When the blackbird flew out of sight,
 * It marked the edge
 * Of one of many circles.
 */
/*
 * X
 * At the sight of blackbirds
 * Flying in green light,
 * Even the bawds of euphony
 * Would cry out sharply.
 */
/*
 * XI
 * He rode over Connecticut
 * In a glass coach.
 * Once, a fear pierced him,
 * In that he mistook
 * The shadow of his equipage
 * For blackbirds.
 */
/*
 * XII
 * The river is moving.
 * The blackbird must be flying.
 */
/*
 * XIII
 * It was evening all afternoon.
 * It was snowing
 * And it was going to snow.
 * The blackbird sat
 * In the cedar-limbs.
 */

/* ...
 * And once out of nature I shall never take
 * My bodily form from any natural thing
 * But such a form as Grecian goldsmiths make
 * Of hammered gold and gold enamelling
 * To keep a drowsy Emperor awake
 * Or set upon a golden bough to sing
 * To lords and ladies of Byzantium
 * Of what is past, or passing, or to come.
 *
 *    from "Sailing to Byzantium" (W.B. Yeats)
 */










