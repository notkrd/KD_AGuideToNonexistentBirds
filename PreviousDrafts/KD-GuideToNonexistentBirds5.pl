/*
 * The Guide to Nonexistent Birds - An Ornithological Logic
 * Edited by Kavi Duvvoori
 */


/* (How I would reccomend reading this thing, though there is room for
 * debate on this question - read the Neruda poem, all the comments I
 * wrote (I'm attached to a few of them), the Wallace Stevens in its
 * entirety but only once, skip the Keats except for a few lines for
 * atmosphere, 13 or so birds, and don't bother with the code except for
 * a few carefully named variables)
 */

/*
 *
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

% NOTE: We cannot yet guarantee that any birds described in this guide
% do not, in fact, exist. We deeply and sincerely apologize for any
% inconvenience this causes and, pending venture capital funding,
% are working on developing a solution to this problem.

strs_flatten(STR_LIST,FLAT_STR) :- maplist(string_chars, STR_LIST, CHAR_LISTS),
	flatten(CHAR_LISTS, FLAT_CHARS),
	string_chars(FLAT_STR,FLAT_CHARS).

make_pairs([E1],[E2],[[E1,E2]]).

make_pairs([H1|T1],[H2|T2],PAIRS):-
	FIRST_PAIR = [H1,H2],
	make_pairs(T1,T2,REST_OF_PAIRS),
	PAIRS = [FIRST_PAIR|REST_OF_PAIRS].

get_head([H|_],H).
get_second([_,S],S).

fibonacci(0,0).
fibonacci(1,1).
fibonacci(N, FIB_N):-
	N >= 2,
	NMONE is N-1,
	NMTWO is N-2,
	fibonacci(NMONE,FIB_NMONE),
	fibonacci(NMTWO,FIB_NMTWO),
	FIB_N is FIB_NMONE + FIB_NMTWO.


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

% We will start with a few names necessary for any bird watcher, or
% bird-imaginer


birdFamilies(["thrush","egret","hawk","duck","grebe","coot","swallow","vulture","gull","flycatcher","swift"]).
colors(["brown","blue","red","golden","crimson","white","black","gray","yellow","violet"]).
birdParts(["tail","wing","head","beak","throat","shoulder","breast","crest","neck"]).
climes(["tropical","arctic","coastal","prairie","forest","mountain"]).
cardDirs(["north","south","east","west"]).
rarities(["common","uncommon"]).
descTypes([coloredPart,clime,cardDir,rarity]).

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

% And start naming them - maybe pointing in a room of taxidermied
% coots, grebes, eagles, and egrets, watching you from paper-mached
% perches.

birdFamily(FAMILY):- birdFamilies(THE_FAMS), member(FAMILY,THE_FAMS).
color(COLOR):- colors(THE_COLORS), member(COLOR,THE_COLORS).
birdPart(BIRD_PART):- birdParts(THE_BPARTS), member(BIRD_PART,THE_BPARTS).
clime(CLIME):- climes(THE_CLIMES), member(CLIME,THE_CLIMES).
cardDir(CARD_DIR):- cardDirs(THE_CARD_DIRS), member(CARD_DIR,THE_CARD_DIRS).
rarity(RARITY):- rarities(THE_RARITIES), member(RARITY,THE_RARITIES).
descType(DESC_TYPE):- descTypes(THE_DESC_TYPES), member(DESC_TYPE,THE_DESC_TYPES).


/*
 * THIRTEEN WAYS OF LOOKING AT A BLACKBIRD
 * Wallace Stevens
 *
 * I
 * Among twenty snowy mountains,
 * The only moving thing
 * Was the eye of the blackbird.
 *
 * II
 * I was of three minds,
 * Like a tree
 * In which there are three blackbirds
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

color_seed("brown",SEED):- SEED < 0.15.
color_seed("blue",SEED):- SEED >= 0.15, SEED < 0.2.
color_seed("red",SEED):- SEED >= 0.2, SEED < 0.35.
color_seed("golden",SEED):- SEED >= 0.35, SEED < 0.5.
color_seed("crimson",SEED):- SEED >= 0.5, SEED < 0.55.
color_seed("white",SEED):- SEED >= 0.55, SEED < 0.65.
color_seed("black",SEED):- SEED >= 0.65, SEED < 0.75.
color_seed("gray",SEED):- SEED >= 0.75, SEED < 0.8.
color_seed("yellow",SEED):- SEED >= 0.8, SEED < 0.95.
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

rarity_seed("common",SEED):- SEED < 0.8.
rarity_seed("uncommon",SEED):- SEED >= 0.8.

descType_seed(coloredPart,SEED):- SEED < 0.5.
descType_seed(clime, SEED):- SEED >= 0.5, SEED < 0.75.
descType_seed(cardDir, SEED):- SEED >= 0.75, SEED < 0.9.
descType_seed(rarity, SEED):- SEED >= 0.9.

% Build the birdhouse, and paint it; buy from Lowe's or Home Depot a bag
% of birdseeds; fill the little bowl with water; fill the floor with the
% seeds; see if something comes; hope it isn't a squirrel.

a_birdFamily(BIRD_FAMILY):- random(S), birdFamily_seed(BIRD_FAMILY,S).
a_color(COLOR):- random(S), color(COLOR), color_seed(COLOR,S).
a_birdPart(BIRD_PART):- random(S), birdPart(BIRD_PART), birdPart_seed(BIRD_PART,S).
a_clime(CLIME):- random(S), clime(CLIME), clime_seed(CLIME,S).
a_cardDir(CARD_DIR):- random(S), cardDir(CARD_DIR), cardDir_seed(CARD_DIR,S).
a_rarity(RARITY):- random(S), rarity(RARITY), rarity_seed(RARITY,S).
a_descType(DESC_TYPE):- random(S), descType_seed(DESC_TYPE,S).


/*
 * THIRTEEN WAYS OF LOOKING AT A BLACKBIRD
 * Wallace Stevens
 *
 * I
 * Among twenty snowy mountains,
 * The only moving thing
 * Was the eye of the blackbird.
 *
 * II
 * I was of three minds,
 * Like a tree
 * In which there are three blackbirds
 *
 * III
 * The blackbird whirled in the autumn winds.
 * It was a small part of the pantomime.
 * ...
 */

% Walk towards the feathery thing a step at a time, crunching no twigs;
% place the binoculars over your eyes, and twiddle the dials until you
% can distinguish leaf from leaf, and feather from feather

attribute_desc(family,[FAMILY_OF_THAT_BIRD_ITS_GRANDPARENTS_AND_NEICES]):-
	birdFamily(FAMILY_OF_THAT_BIRD_ITS_GRANDPARENTS_AND_NEICES).
attribute_desc(coloredPart,[PART_OF_A_BIRD,COLOR_OF_A_PART_OF_THAT_BIRD]):-
	birdPart(PART_OF_A_BIRD), color(COLOR_OF_A_PART_OF_THAT_BIRD).
attribute_desc(clime,[THEIR_PREFERRED_KIND_OF_WIND_AND_VEGETATION]):-
	clime(THEIR_PREFERRED_KIND_OF_WIND_AND_VEGETATION).
attribute_desc(rarity,[THOSE_MULTITUDES]):-
	rarity(THOSE_MULTITUDES).
attribute_desc(cardDir,[THAT_BIRDS_PREFERENCE_IN_COMPASSES]):-
	cardDir(THAT_BIRDS_PREFERENCE_IN_COMPASSES).

% Standing in a city rock doves with their green glimmering throats
% twitter around you; under the ornamental bridge, gliding mallards
% congregate; to the dead hedgehog flesh-headed vultures swoop

an_attribute_desc(family,[A_FAMILY_FOR_THAT_BIRD_AUNTS_UNCLES_SIBLINGS]):-
	a_birdFamily(A_FAMILY_FOR_THAT_BIRD_AUNTS_UNCLES_SIBLINGS).
an_attribute_desc(coloredPart,[A_PART_OF_THAT_BIRD, A_COLOR_OF_A_PART_OF_THAT_BIRD]):-
	a_birdPart(A_PART_OF_THAT_BIRD), a_color(A_COLOR_OF_A_PART_OF_THAT_BIRD).
an_attribute_desc(clime,[A_PREFERRED_KIND_OF_WIND_AND_VEGETATION]):-
	a_clime(A_PREFERRED_KIND_OF_WIND_AND_VEGETATION).
an_attribute_desc(rarity,[WHAT_MULTITUDES]):-
	a_rarity(WHAT_MULTITUDES).
an_attribute_desc(cardDir,[HOLD_A_COMPASS_UNDER_IT]):-
	a_cardDir(HOLD_A_COMPASS_UNDER_IT).

% The Juan Fernandez firecrown in the Juan Fernandez Islands, named
% after the Spanish explorer Juan Fernandez, is a hummingbird only
% spotted on the island Isla de Robinson Crusoe, named after Robinson
% Crusoe, owned by Chile which was named "Chile" by the Spanish
% possibly from the Incan naming of a valley "Chili," a corruption of
% the name of a Picunche chief Tili, or which may be named from a
% Mapuche word "chilli" for "where the land ends," a Quechua word
% "chiri" or "tchilli" for "cold" or "snow," or for the onomatopoeic
% "cheele-cheele" for the warble of a bird, known as the "trile"

desc_name(coloredPart,[THE_PART,THE_COLOR],THE_DESC_STR):-
	strs_flatten([THE_COLOR,"-",THE_PART,"ed"],THE_DESC_STR).
desc_name(clime, [THE_CLIME], THE_DESC_STR):-
	THE_DESC_STR = THE_CLIME.
desc_name(cardDir, [THE_CARD_DIR], THE_DESC_STR):-
	strs_flatten([THE_CARD_DIR,"ern"],THE_DESC_STR).
desc_name(rarity, [THE_RARITY], THE_DESC_STR):-
	THE_DESC_STR = THE_RARITY.
desc_name(family, [THE_FAMILY], THE_DESC_STR):-
	THE_DESC_STR = THE_FAMILY.


/*
 * THIRTEEN WAYS OF LOOKING AT A BLACKBIRD
 * Wallace Stevens
 *
 * I
 * Among twenty snowy mountains,
 * The only moving thing
 * Was the eye of the blackbird.
 *
 * II
 * I was of three minds,
 * Like a tree
 * In which there are three blackbirds
 *
 * III
 * The blackbird whirled in the autumn winds.
 * It was a small part of the pantomime.
 *
 * IV
 * A man and a woman are one.
 * A man and a woman and a
 * blackbird
 * Are one.
 *
 * V
 * I do not know which to prefer,
 * The beauty of inflections
 * Or the beauty of innuendoes,
 * The blackbird whistling
 * Or just after.
 * ...
 *
 * (I wanted to change the "man" and "woman" in the 4th one to [PERSON],
 * but .. i don't know .. it would have been dishonest i guess (maybe
 * it's a useful reminder that you can watch so many birds' wings and
 * still be stuck in human time and things))
 */

% Now sit behind your backyard window, grab some scrap paper, an extra
% page accidentally printed - find a pencil, and start sketching. Take
% out the watercolors, and brush in, moving from light to dark, quick
% washes.

that_piece_of_that_bird_in_that_color(THAT_PIECE_OF_THAT_BIRD,[THAT_PIECE_OF_THAT_BIRD,IN_THAT_COLOR]):-
	birdPart(THAT_PIECE_OF_THAT_BIRD),
	color(IN_THAT_COLOR),
	attribute_desc(coloredPart,[THAT_PIECE_OF_THAT_BIRD,IN_THAT_COLOR]).

colors_of_parts_of_that_bird(THE_PIECES_IN_COLORS):-
	birdParts(THE_PIECES_OF_THAT_BIRD),
	maplist(that_piece_of_that_bird_in_that_color,THE_PIECES_OF_THAT_BIRD,THE_PIECES_IN_COLORS).

that_piece_of_that_bird_in_a_color(THAT_PIECE_OF_THAT_BIRD,[THAT_PIECE_OF_THAT_BIRD,IN_A_COLOR]):-
	birdPart(THAT_PIECE_OF_THAT_BIRD),
	a_color(IN_A_COLOR).

colors_of_parts_of_a_bird(THE_PIECES_IN_SOME_COLORS):-
	birdParts(THE_PIECES_OF_THAT_BIRD),
	maplist(that_piece_of_that_bird_in_a_color,THE_PIECES_OF_THAT_BIRD,THE_PIECES_IN_SOME_COLORS).

% We know your blue and my blue may or may not be the same blue, but,
% outside of thought experiment, almost definitely, after examining rods
% and cones and counting them and counting wave lenghts, and some other
% such things birds see some more colors, particularly some ultraviolet
% ones, and possess plumage reflecting some of these ultraviolet colors.
% You will not see this ultraviolet stripe on a chickadee, and you will
% not have a word for it.

name_for(clime,NAME_IT,_,_,LOCATE_IT,_,FIND_ITS_RELATIONS):-
	desc_name(clime,LOCATE_IT,NAME_THE_PLACE),
	desc_name(family,FIND_ITS_RELATIONS,NAME_THE_RELATIONS),
	strs_flatten([NAME_THE_PLACE," ",NAME_THE_RELATIONS],NAME_IT).

name_for(cardDir,NAME_IT,_,_,_,POINT,FIND_ITS_RELATIONS):-
	desc_name(cardDir,POINT,NAME_THE_DIR),
	desc_name(family,FIND_ITS_RELATIONS,NAME_THE_RELATIONS),
	strs_flatten([NAME_THE_DIR," ",NAME_THE_RELATIONS],NAME_IT).

name_for(rarity,NAME_IT,_,COUNT_IT,_,_,FIND_ITS_RELATIONS):-
	desc_name(rarity,COUNT_IT,NAME_THE_NUMBER),
	desc_name(family,FIND_ITS_RELATIONS,NAME_THE_RELATIONS),
	strs_flatten([NAME_THE_NUMBER," ",NAME_THE_RELATIONS],NAME_IT).

name_for(coloredPart,NAME_IT,COLOR_IT,_,_,_,FIND_ITS_RELATIONS):-
	member(THE_COLORED_PART,COLOR_IT),
	desc_name(coloredPart,THE_COLORED_PART,NAME_THE_COLORED_PART),
	desc_name(family,FIND_ITS_RELATIONS,NAME_THE_RELATIONS),
	strs_flatten([NAME_THE_COLORED_PART," ",NAME_THE_RELATIONS],NAME_IT).

% Consider a bird through a window. It's a small fluffed mass -
% vibrating, folded up. Lacking better names for it, call it A Little
% Brown Thing.

a_name_ofType(clime,NAME_IT,COLOR_IT,COUNT_IT,LOCATE_IT,POINT,FIND_ITS_RELATIONS):-
	name_for(clime,NAME_IT,COLOR_IT,COUNT_IT,LOCATE_IT,POINT,FIND_ITS_RELATIONS).

a_name_ofType(cardDir,NAME_IT,COLOR_IT,COUNT_IT,LOCATE_IT,POINT,FIND_ITS_RELATIONS):-
	name_for(cardDir,NAME_IT,COLOR_IT,COUNT_IT,LOCATE_IT,POINT,FIND_ITS_RELATIONS).

a_name_ofType(rarity,NAME_IT,COLOR_IT,COUNT_IT,LOCATE_IT,POINT,FIND_ITS_RELATIONS):-
	name_for(rarity,NAME_IT,COLOR_IT,COUNT_IT,LOCATE_IT,POINT,FIND_ITS_RELATIONS).

a_name_ofType(coloredPart,NAME_IT,COLOR_IT,_,_,_,FIND_ITS_RELATIONS):-
	a_birdPart(SOME_PART),
	THE_COLORED_PART = [SOME_PART,_],
	member(THE_COLORED_PART,COLOR_IT),
	desc_name(coloredPart,THE_COLORED_PART,NAME_THE_COLORED_PART),
	desc_name(family,FIND_ITS_RELATIONS,NAME_THE_RELATIONS),
	strs_flatten([NAME_THE_COLORED_PART," ",NAME_THE_RELATIONS],NAME_IT).

% One from the Spring flock on the nearby tree lands in front of you -
% brown-winged, white-throated, large as a butternut squash. When you
% step towards it, it leaps an equal amount back. When you step away, it
% steps the same distance forward. When you step twice it flaps back up
% into the big tree.

bird(NAME_IT,COLOR_IT,COUNT_IT,LOCATE_IT,POINT,FIND_ITS_RELATIONS,WEIGH_IT):-
	string(NAME_IT),
	colors_of_parts_of_that_bird(COLOR_IT),
	attribute_desc(rarity,COUNT_IT),
	attribute_desc(clime,LOCATE_IT),
	attribute_desc(cardDir,POINT),
	birdFamily(FIND_ITS_RELATIONS),
	1 =< WEIGH_IT,
	WEIGH_IT =< 10.

a_bird(NAME,COLORS,COUNT,LOCATE,POINT,FIND_RELATIONS,WEIGH_IT):-
	colors_of_parts_of_a_bird(COLORS),
	an_attribute_desc(rarity,COUNT),
	an_attribute_desc(clime,LOCATE),
	an_attribute_desc(cardDir,POINT),
	an_attribute_desc(family,FIND_RELATIONS),
	a_descType(A_NAME_TYPE),
	random_between(1,10,WEIGH_IT),
	a_name_ofType(A_NAME_TYPE,NAME,COLORS,COUNT,LOCATE,POINT,FIND_RELATIONS).

a_bird_ofFamily(NAME,COLORS,COUNT,LOCATE,POINT,ITS_RELATIONS,WEIGH_IT):-
	colors_of_parts_of_a_bird(COLORS),
	an_attribute_desc(rarity,COUNT),
	an_attribute_desc(clime,LOCATE),
	an_attribute_desc(cardDir,POINT),
	a_descType(A_NAME_TYPE),
	random_between(1,10,WEIGH_IT),
	a_name_ofType(A_NAME_TYPE,NAME,COLORS,COUNT,LOCATE,POINT,ITS_RELATIONS).

% To note the bird quickly, note the shape of the wings in profile,
% black against sunlight; or count toes; forget the background tree,
% forget the ruffle of feathers, but maybe count a flock; dappled
% sunlight is distracting but forgetting the sunlight, the distinction
% between speckled and striped is a sure way to tell thrush from thrush;
% plumage patterns of the juvenile are different and require another
% chart.

list_bird(ABOUT_A_BIRD,NAME,COLORS,COUNT,LOCATE,POINT,FIND_RELATIONS,WEIGH_IT):-
	ABOUT_A_BIRD = [NAME,COLORS,COUNT,LOCATE,POINT,FIND_RELATIONS,WEIGH_IT].

birdList(BIRD_LIST):-
	bird(N,CP,CN,L,P,F,S),
	list_bird(BIRD_LIST,N,CP,CN,L,P,F,S).

birdList_birdName(LISTED_BIRD,ITS_NAME):-
	nth0(0,LISTED_BIRD,ITS_NAME).

birdList_birdColors(LISTED_BIRD,ITS_COLORS):-
	nth0(1,LISTED_BIRD,ITS_COLORS).

birdList_birdRarity(LISTED_BIRD,ITS_RARITY):-
	nth0(2,LISTED_BIRD,ITS_RARITY).

birdList_birdClime(LISTED_BIRD,ITS_CLIME):-
	nth0(3,LISTED_BIRD,ITS_CLIME).

birdList_birdDir(LISTED_BIRD,ITS_DIR):-
	nth0(4,LISTED_BIRD,ITS_DIR).

birdList_birdFamily(LISTED_BIRD,ITS_FAMILY):-
	nth0(5,LISTED_BIRD,ITS_FAMILY).

birdList_birdSize(LISTED_BIRD,ITS_SIZE):-
	nth0(6,LISTED_BIRD,ITS_SIZE).

a_birdList(ABOUT_A_BIRD):-
	a_bird(NAME,COLORS,COUNT,LOCATE,POINT,FIND_RELATIONS,WEIGH_IT),
	list_bird(ABOUT_A_BIRD,NAME,COLORS,COUNT,LOCATE,POINT,FIND_RELATIONS,WEIGH_IT).

a_birdList(_,ABOUT_A_BIRD):-
	a_birdList(ABOUT_A_BIRD).

a_birdList_ofFamily(ITS_RELATIONS,ABOUT_A_BIRD):-
	a_bird_ofFamily(NAME,COLORS,COUNT,LOCATE,POINT,ITS_RELATIONS,WEIGH_IT),
	list_bird(ABOUT_A_BIRD,NAME,COLORS,COUNT,LOCATE,POINT,ITS_RELATIONS,WEIGH_IT).

a_relationList(OLD_BIRD,RELATED_BIRD):-
	birdList_birdFamily(OLD_BIRD,THE_FAM),
	a_birdList_ofFamily(THE_FAM,RELATED_BIRD).

/*
 * THIRTEEN WAYS OF LOOKING AT A BLACKBIRD
 * Wallace Stevens
 *
 * I
 * Among twenty snowy mountains,
 * The only moving thing
 * Was the eye of the blackbird.
 *
 * II
 * I was of three minds,
 * Like a tree
 * In which there are three blackbirds
 *
 * III
 * The blackbird whirled in the autumn winds.
 * It was a small part of the pantomime.
 *
 * IV
 * A man and a woman are one.
 * A man and a woman and a
 * blackbird
 * Are one.
 *
 * V
 * I do not know which to prefer,
 * The beauty of inflections
 * Or the beauty of innuendoes,
 * The blackbird whistling
 * Or just after.
 *
 * VI
 * Icicles filled the long window
 * With barbaric glass.
 * The shadow of the blackbird
 * Crossed it, to and fro.
 * The mood
 * Traced in the shadow
 * An indecipherable cause.
 *
 * VII
 * O think men of Haddam,
 * Why do you imagine golden birds?
 * Do you not see how the blackbird
 * Walks around the feet
 * Of the women about you
 *
 *  VIII
 * I know noble accents
 * And lucid, inescapable rhythms;
 * But I know, too,
 * That the blackbird is involved
 * In what I know.
 * ...
 *
 * (same conflicts and confusions present themselves in VII; the same
 * easy and unsatisfying answers (new wings))
 *
 */



% Weigh a pile of feathers against an egg; measure wingspan in talons;
% look for stripes and count spots; compare speckling and distinguish
% shades of blue

comparison_intensifier(NUM1,NUM2,INTS_STR):-
	integer(NUM1), integer(NUM2),
	DIFF = abs(NUM1 - NUM2),
	0 = DIFF,
	INTS_STR = " not".

comparison_intensifier(NUM1,NUM2,INTS_STR):-
	integer(NUM1), integer(NUM2),
	DIFF = abs(NUM1 - NUM2),
	0 < DIFF, DIFF =< 2,
	INTS_STR = " slightly".

comparison_intensifier(NUM1,NUM2,INTS_STR):-
	integer(NUM1), integer(NUM2),
	DIFF = abs(NUM1 - NUM2),
	2 < DIFF, DIFF =< 3,
	INTS_STR = " somewhat".

comparison_intensifier(NUM1,NUM2,INTS_STR):-
	integer(NUM1), integer(NUM2),
	DIFF = abs(NUM1 - NUM2),
	3 < DIFF, DIFF =< 4,
	INTS_STR = " ".

comparison_intensifier(NUM1,NUM2,INTS_STR):-
	integer(NUM1), integer(NUM2),
	DIFF = abs(NUM1 - NUM2),
	4 < DIFF,
	INTS_STR = " much".

comparison_str(NUM1,NUM2,COMP_STR):-
	integer(NUM1), integer(NUM2),
	NUM1 > NUM2,
	comparison_intensifier(NUM1,NUM2,INTS_STR),
	strs_flatten([INTS_STR," larger than"],COMP_STR).

comparison_str(NUM1,NUM2,COMP_STR):-
	integer(NUM1), integer(NUM2),
	NUM1 < NUM2,
	comparison_intensifier(NUM1,NUM2,INTS_STR),
	strs_flatten([INTS_STR," smaller than"],COMP_STR).

comparison_str(NUM1,NUM2,COMP_STR):-
	integer(NUM1), integer(NUM2),
	NUM1 = NUM2,
	COMP_STR = " as large as".

% And now, a brief break for ode-singing -

% Ode to a Nightingale
%    John Keats
%
% My heart aches, and a drowsy numbness pains
%    My sense, as though of hemlock I had drunk,
% Or emptied some dull opiate to the drains
%    One minute past, and Lethe-wards had sunk:
% 'Tis not through envy of thy happy lot
%    But being too happy in thine happiness,-
%       That though, light-winged Dryad of the trees
%          In some melodious plot
%	Of beechen green, and shadows numberless,
%	   Singest of summer in full-throated ease.
%
% O, for a drought of vintage! that hath been
%    Cool'd a long age in the deep-delved earth,
% Tasting of Flora and the country green,
%    Dance, and Provencal song, and sunburnt mirth!
% O for a beaker full of the warm South,
%    Full of the true, the blushful Hippocrene,
%       With beaded bubbles winking at the brim,
%          And purple-stained mouth;
%    That I might drink, and leave the world unseen,
%       And with thee fade away into the forest dim:
%
% Fade far away, dissolve, and quite forget
%    What thou among the leaves hast never known,
% The weariness, the fever, and the fret
%    Here, where men sit and hear each other groan;
% Where palsy shakes a few, sad, last gray hairs,
%    Where youth grows pale, and spectre-thin, and dies;
%       Where but to think is to be full of sorrow
%          And leaden-eyed despairs,
%	Where Beauty cannot keep her lustrous eyes,
%	  Or new Love pine at them beyond to-morrow.
%
% Away! away! for I will fly to thee,
%    Not charioted by Bacchus and his pards,
% But on the viewless wings of Poesy,
%    Though the dull brain perlexes and retards:
% Already with thee! tender is the night,
%    And haply the Queen-Moon is on her throne,
%       Cluster'd around by all her starry Fays;
%          But here there is no light,
%    Save what from heaven is with the breezes blown
%       Through verdurous glooms and winding mossy ways
%
% I cannot see what flowers are at my feet,
%    Now what soft incense hangs upon the boughs,
% But, in embalmed darkness, guess each sweet
%    Wherewith the seasonable month endows
% The grass, the thicket, and the fruit-tree wild;
%    White hawthorn and the pastoral eglantine;
%       Fast fading violets cover'd up in leaves;
%          And mid-May's eldest child,
%    The coming musk-rose, full of dewy wine,
%       THe murmurous haunt of flies on summer eves.
%
% Darkling I listen; and, for many a time
%    I have been half in love with easeful Death,
% Call'd him soft names in many a mused rhyme,
%    To take into the air my quiet breath;
%       Now more then ever seems it rich to die,
%    To cease upon the midnight with no pain,
%       While thou art pouring forth thy soul abroad
%          In such an ecstasy!
%    Still wouldst thou sing, and I have ears in vain-
%       To thy high requiem become a sod.
%
% Thou wast not born for death, immortal Bird!
%    No hungry generations thread thee down;
% The voice I hear this passing night was heard
%    In ancient days by emperor and clown:
% Perhaps the self-same song that found a path
%    Through the sad heart of Ruth, when, sick for home,
%       She stood in tears amid the alien corn;
%          The same that oft-times hath at intervels.
%
%
%    Charm'd magic casements, opening on the foam
%       Of perilous seas in faery lands forlorn.
%
% Forlorn! the very word is like a bell
%    To toll me back from thee to my sole self!
% Adieu! the fancy cannot cheat so well
%    As she is fam'd to do, deceiving elf.
% Adieu! adieu! thy plaintive anthem fades
%    Past the near meadows, over the still stream,
%       Up the hill-side; and now 'tis buried deep
%          In the next valley-glades:
%    Was it a vision, or a waking dream?
%       Fled is that music:-Do I wake or sleep?



% The sound of beak on wood,
% clear air, the sun-hot dirt;
% quick clicks frantic as footsteps.
%
% Elsewhere a chirping,
% as microwaves or cellphones do.


% (So sing thing, sing)

part_phrase(PART,LIST_THE_BIRD,TALK_ABOUT_THAT):-
	birdList_birdColors(LIST_THE_BIRD,ALL_THE_BIRD),
	member([PART,ITS_COLOR], ALL_THE_BIRD),
	strs_flatten([ITS_COLOR," ",PART],TALK_ABOUT_THAT).

a_part_phrase(LIST_THE_BIRD,TALK_ABOUT_IT):-
	a_birdPart(A_PART),
	part_phrase(A_PART,LIST_THE_BIRD,TALK_ABOUT_IT).

comparative_phrase(LIST_BIRD1,LIST_BIRD2,COMP_PHR):-
	birdList_birdName(LIST_BIRD2,B2_NAME),
	birdList_birdSize(LIST_BIRD1,B1_SIZE),
	birdList_birdSize(LIST_BIRD2,B2_SIZE),
	comparison_str(B1_SIZE,B2_SIZE,COMP_STR),
	strs_flatten([" is", COMP_STR," the ",B2_NAME],COMP_PHR).

comparative_sentence(LIST_BIRD1,LIST_BIRD2,COMP_SENT):-
	birdList_birdName(LIST_BIRD1,B1_NAME),
	birdParts(B_PARTS),
	random_member(PART1,B_PARTS),
	delete(B_PARTS,PART1,OTHER_B_PARTS),
	random_member(PART2,OTHER_B_PARTS),
	part_phrase(PART1,LIST_BIRD1,DESC1),
	part_phrase(PART2,LIST_BIRD1,DESC2),
	comparative_phrase(LIST_BIRD1,LIST_BIRD2,COMP_PHR),
	strs_flatten(["The ",B1_NAME,COMP_PHR," with a ",DESC1," and ",DESC2,". "],COMP_SENT).

comparative_sentence([LIST_BIRD1,LIST_BIRD2],COMP_SENT):-
	comparative_sentence(LIST_BIRD1,LIST_BIRD2,COMP_SENT).

descriptive_sentence(LISTED_BIRD,DESC_SENT):-
	birdList_birdName(LISTED_BIRD,BIRD_NAME),
	birdParts(B_PARTS),
	random_member(PART1,B_PARTS),
	delete(B_PARTS,PART1,OTHER_B_PARTS),
	random_member(PART2,OTHER_B_PARTS),
	part_phrase(PART1,LISTED_BIRD,DESC1),
	part_phrase(PART2,LISTED_BIRD,DESC2),
	strs_flatten(["The ",BIRD_NAME," has a ",DESC1," and a ",DESC2,". "],DESC_SENT).
/*
 * THIRTEEN WAYS OF LOOKING AT A BLACKBIRD
 * Wallace Stevens
 *
 * I
 * Among twenty snowy mountains,
 * The only moving thing
 * Was the eye of the blackbird.
 *
 * II
 * I was of three minds,
 * Like a tree
 * In which there are three blackbirds
 *
 * III
 * The blackbird whirled in the autumn winds.
 * It was a small part of the pantomime.
 *
 * IV
 * A man and a woman
 * Are one.
 * A man and a woman and a blackbird
 * Are one.
 *
 * V
 * I do not know which to prefer,
 * The beauty of inflections
 * Or the beauty of innuendoes,
 * The blackbird whistling
 * Or just after.
 *
 * VI
 * Icicles filled the long window
 * With barbaric glass.
 * The shadow of the blackbird
 * Crossed it, to and fro.
 * The mood
 * Traced in the shadow
 * An indecipherable cause.
 *
 * VII
 * O think men of Haddam,
 * Why do you imagine golden birs?
 * Do you not see how the blackbird
 * Walks around the feet
 * Of the women about you
 *
 * VIII
 * I know noble accents
 * And lucid, inescapable rhythms;
 * But I know, too,
 * That the blackbird is involved
 * In what I know.
 *
 * IX
 * When the blackbird flew out of sight,
 * It marked the edge
 * Of one of many circles.
 *
 * X
 * At the sight of blackbirds
 * Flying in green light,
 * Even the bawds of euphony
 * Would cry out sharply.
 *
 * XI
 * He rode over Connecticut
 * In a glass coach.
 * Once, a fear pierced him,
 * In that he mistook
 * The shadow of his equipage
 * For blackbirds.
 *
 * XII
 * The river is moving.
 * The blackbird must be flying.
 *
 * XIII
 * It was evening all afternoon.
 * It was snowing
 * And it was going to snow.
 * The blackbird sat
 * In the cedar-limbs.
 */

% When they stop writing, they find that they are walking in a forest; I
% can't tell you who they are or hear what they are saying, but I can
% tell you about the leaves on the branches and the loam and orange
% light. Around them there are: 2 woodpeckers. 1 swallow. A vulture
% overhead and a swift in a bush.

first_bird([BIRD],WORDS):-
	a_birdList(BIRD),
	descriptive_sentence(BIRD,WORDS).

new_birds(0,WHAT_OLD_BIRDS,RELATED_BIRDS,RELATION_WORDS):-
	maplist(a_relationList,WHAT_OLD_BIRDS,RELATED_BIRDS),
	make_pairs(RELATED_BIRDS,WHAT_OLD_BIRDS,RELATED_PAIRS),
	maplist(comparative_sentence,RELATED_PAIRS,RELATION_WORDS).

% There are estimated to be 19,000,000 mallards to 50 crested
% shellducks. Between 350 and 1500 scarlet banded barbets on the summit
% of a solitary Peruvian mountain to between 73.5 million and 216
% million great spotted woodpeckers, over 40,000,000 willow ptarmigans
% and 1679 flightless cormorants. Some billions, maybe hundreds of
% billions, overall. Someone sits on the rocky beach in rain-pants
% twisting bands round roughly feathered legs.

new_birds(HOW_MANY,WHAT_OLD_BIRDS,NEW_BIRDS,NEW_WORDS):-
	HOW_MANY > 0,
	numlist(1,HOW_MANY,NEW_NUMBERS),
	maplist(a_birdList,NEW_NUMBERS,FRESH_BIRDS),
	maplist(a_relationList,WHAT_OLD_BIRDS,RELATED_BIRDS),
	make_pairs(RELATED_BIRDS,WHAT_OLD_BIRDS,RELATED_PAIRS),
	maplist(comparative_sentence,RELATED_PAIRS,RELATION_WORDS),
	maplist(descriptive_sentence,FRESH_BIRDS,FRESH_WORDS),
	append(FRESH_BIRDS,RELATED_BIRDS,NEW_BIRDS),
	append(RELATION_WORDS,FRESH_WORDS,NEW_WORDS).

fibonacci_birds(1,[[BIRD,WORDS]],[[BIRD,WORDS]]):-
	first_bird([BIRD],WORDS).

fibonacci_birds(N,ALL_BIRDS_WITH_WORDS,NEW_PAIRS):-
	N >= 2,
	NMONE is N - 1,
	NMTWO is N - 2,
	fibonacci(NMTWO,FIB_NMTWO),
	fibonacci_birds(NMONE,ALL_OLD_BIRDS,OLD_BIRDS_WITH_WORDS),
	maplist(get_head,OLD_BIRDS_WITH_WORDS,JUST_BIRDS),
	new_birds(FIB_NMTWO,JUST_BIRDS,NEW_BIRDS,NEW_WORDS),
	make_pairs(NEW_BIRDS,NEW_WORDS,NEW_PAIRS),
	append(ALL_OLD_BIRDS,NEW_PAIRS,ALL_BIRDS_WITH_WORDS).





















































