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

birdFamilies(["thrush","egret","hawk","duck","grebe","coot","swallow","vulture","flycatcher","swift"]).

birdFamily_seed("thrush",SEED):- SEED < 0.15.
birdFamily_seed("egret",SEED):- SEED >= 0.15, SEED < 0.2.
birdFamily_seed("hawk",SEED):- SEED >= 0.2, SEED < 0.35.
birdFamily_seed("duck",SEED):- SEED >= 0.35, SEED < 0.45.
birdFamily_seed("grebe",SEED):- SEED >= 0.45, SEED < 0.5.
birdFamily_seed("coot",SEED):- SEED >= 0.5, SEED < 0.55.
birdFamily_seed("swallow",SEED):- SEED >= 0.55, SEED < 0.75.
birdFamily_seed("vulture",SEED):- SEED >= 0.75, SEED < 0.85.
birdFamily_seed("flycatcher",SEED):- SEED >= 0.85, SEED < 0.90.
birdFamily_seed("swift",SEED):- SEED >= 0.9.

birdFamily(FAMILY):- birdFamilies(THE_FAMS), member(FAMILY,THE_FAMS).
a_birdFamily(BIRD_FAMILY):- random(S), birdFamily_seed(BIRD_FAMILY,S).

colors(["brown","red","golden","crimson","white","black","gray","yellow","violet"]).

color_seed("brown",SEED):- SEED < 0.35.
color_seed("red",SEED):- SEED >= 0.35, SEED < 0.5.
color_seed("golden",SEED):- SEED >= 0.5, SEED < 0.6.
color_seed("crimson",SEED):- SEED >= 0.6, SEED < 0.65.
color_seed("white",SEED):- SEED >= 0.65, SEED < 0.7.
color_seed("black",SEED):- SEED >= 0.7, SEED < 0.75.
color_seed("gray",SEED):- SEED >= 0.75, SEED < 0.85.
color_seed("yellow",SEED):- SEED >= 0.85, SEED < 0.95.
color_seed("violet",SEED):- SEED >= 0.95.

color(COLOR):- colors(THE_COLORS), member(COLOR,THE_COLORS).
a_color(COLOR):- random(S), color_seed(COLOR,S).

birdParts(["tail","beak","throat","shoulder","breast","crest","bill","neck"]).

birdPart_seed("tail",SEED):- SEED < 0.35.
birdPart_seed("beak",SEED):- SEED >= 0.35, SEED < 0.5.
birdPart_seed("throat",SEED):- SEED >= 0.5, SEED < 0.6.
birdPart_seed("shoulder",SEED):- SEED >= 0.6, SEED < 0.7.
birdPart_seed("breast",SEED):- SEED >= 0.7, SEED < 0.8.
birdPart_seed("crest",SEED):- SEED >= 0.8, SEED < 0.9.
birdPart_seed("bill",SEED):- SEED >= 0.9, SEED < 0.95.
birdPart_seed("neck",SEED):- SEED >= 0.95.

birdPart(BIRD_PART):- birdParts(THE_BPARTS), member(BIRD_PART,THE_BPARTS).
a_birdPart(BPART):- random(S), birdPart_seed(BPART,S).

climes(["tropical","arctic"]).

clime_seed("tropical",SEED):- SEED < 0.5.
clime_seed("arctic",SEED):- SEED >= 0.5.

clime(CLIME):- climes(THE_CLIMES), member(CLIME,THE_CLIMES).
a_clime(CLIME):- random(S), clime_seed(CLIME,S).

cardDirs(["north","south","east","west"]).

cardDir_seed("north",SEED):- SEED < 0.25.
cardDir_seed("south",SEED):- SEED >= 0.25, SEED < 0.5.
cardDir_seed("east",SEED):- SEED >= 0.5, SEED < 0.75.
cardDir_seed("west",SEED):- SEED >= 0.75.

cardDir(CARD_DIR):- cardDirs(THE_CARD_DIRS), member(CARD_DIR,THE_CARD_DIRS).
a_cardDir(CARDDIR):- random(S), cardDir_seed(CARDDIR,S).

rarities(["common"]).

rarity_seed("common",SEED):- SEED < 1.

rarity(RARITY):- rarities(THE_RARITIES), member(RARITY,THE_RARITIES).
a_rarity(RARITY):- random(S), rarity_seed(RARITY,S).
descTypes([colored_part,clime,cardDir,rarity]).

descType_seed(colored_part,SEED):- SEED < 0.7.
descType_seed(clime, SEED):- SEED >= 0.7, SEED < 0.8.
descType_seed(cardDir, SEED):- SEED >= 0.8, SEED < 0.95.
descType_seed(rarity, SEED):- SEED >= 0.95.

descType(DESC_TYPE):- descTypes(THE_DESC_TYPES), member(DESC_TYPE,THE_DESC_TYPES).
a_descType(DESC_TYPE):- random(S), descType_seed(DESC_TYPE,S).


birdDesc(colored_part,[THE_COLOR,THE_PART]):- color(THE_COLOR),birdPart(THE_PART).
birdDesc(clime,[THE_CLIME]):- clime(THE_CLIME).
birdDesc(cardDir, [THE_CARDDIR]):- cardDir(THE_CARDDIR).
birdDesc(rarity, [THE_RARITY]):- rarity(THE_RARITY).

a_descType_birdDesc(colored_part,[A_COLOR,A_PART]):- a_color(A_COLOR),a_birdPart(A_PART).
a_descType_birdDesc(clime,[THE_CLIME]):- a_clime(THE_CLIME).
a_descType_birdDesc(cardDir,[A_CARDDIR]):- a_cardDir(A_CARDDIR).
a_descType_birdDesc(rarity, [A_RARITY]):- a_rarity(A_RARITY).

a_birdDesc(A_DESC_TYPE, A_BIRDDESC):- a_descType(A_DESC_TYPE), a_descType_birdDesc(A_DESC_TYPE,A_BIRDDESC).

descSTR(colored_part,THE_DESC,THE_DESC_STR):-
	birdDesc(colored_part,THE_DESC),THE_DESC = [THE_COLOR,THE_PART],
	strs_flatten([THE_COLOR,"-",THE_PART,"ed"],THE_DESC_STR).
descSTR(clime, THE_DESC, THE_DESC_STR):-
	birdDesc(clime,THE_DESC), THE_DESC = [THE_CLIME],
	THE_DESC_STR = THE_CLIME.
descSTR(cardDir, THE_DESC, THE_DESC_STR):-
	birdDesc(cardDir, THE_DESC), THE_DESC = [THE_CARD_DIR],
	strs_flatten([THE_CARD_DIR,"ern"],THE_DESC_STR).
descSTR(rarity, THE_DESC, THE_DESC_STR):-
	birdDesc(rarity, THE_DESC), THE_DESC = [THE_RARITY],
	THE_DESC_STR = THE_RARITY.

birdSpecies([THE_DESC,THE_FAMILY]):- birdDesc(_,THE_DESC), birdFamily(THE_FAMILY).

species_speciesName(THE_SPECIES,THE_SPECIES_NAME):- birdSpecies(THE_SPECIES), [THE_DESC,THE_FAMILY] = THE_SPECIES,
	birdDesc(THE_DESC_TYPE,THE_DESC),
	descSTR(THE_DESC_TYPE,THE_DESC,THE_DESC_STR),
	strs_flatten([THE_DESC_STR," ",THE_FAMILY],THE_SPECIES_NAME).

a_species([A_DESC,A_FAMILY]):- a_birdDesc(_,A_DESC), a_birdFamily(A_FAMILY), birdSpecies([A_DESC,A_FAMILY]).

a_speciesName(A_SPECIES_NAME):- a_species(A_SPECIES), species_speciesName(A_SPECIES,A_SPECIES_NAME).

/*...The caged bird sings
 * with a fearful trill
 * of things unkown
 * but longed for still
 * and his tune is heard
 * on the distant hill
 * for the caged bird
 * sings of freedom.
 *
 * from "Caged Bird"
 * Maya Angelou
 */

strs_flatten(STR_LIST,FLAT_STR) :- maplist(string_chars, STR_LIST, CHAR_LISTS),
	flatten(CHAR_LISTS, FLAT_CHARS),
	string_chars(FLAT_STR,FLAT_CHARS).












