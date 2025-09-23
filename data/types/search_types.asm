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
	db INSECTE
	db ROCHE
	db SPECTRE
	db DRAGON
	db DARK
	db ACIER
	assert_table_length NUM_TYPES
