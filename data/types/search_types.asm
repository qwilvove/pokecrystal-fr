PokedexTypeSearchConversionTable:
; entries correspond with PokedexTypeSearchStrings (see data/types/search_strings.asm)
	table_width 1
	db NORMAL
	db FIRE
	db WATER
	db GRASS
	db ELECTRIC
	db ICE
	db COMBAT
	db POISON
	db SOL
	db VOL
	db PSYCHIC_TYPE
	db BUG
	db ROCK
	db GHOST
	db DRAGON
	db DARK
	db STEEL
	assert_table_length NUM_TYPES
