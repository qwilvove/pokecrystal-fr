; TypeNames indexes (see data/types/names.asm)
; also used in:
; - PokedexTypeSearchConversionTable (see data/types/search_types.asm)
; - PokedexTypeSearchStrings (see data/types/search_strings.asm)
; - TypeMatchups (see data/types/type_matchups.asm)
; - TypeBoostItems (see data/types/type_boost_items.asm)
	const_def

DEF PHYSICAL EQU const_value
	const NORMAL
	const COMBAT
	const VOL
	const POISON
	const SOL
	const ROCHE
	const BIRD
	const INSECTE
	const SPECTRE
	const ACIER

DEF UNUSED_TYPES EQU const_value
	const_next 19
	const CURSE_TYPE
DEF UNUSED_TYPES_END EQU const_value

DEF SPECIAL EQU const_value
	const FEU
	const EAU
	const PLANTE
	const ELECTRIK
	const PSY
	const ICE
	const DRAGON
	const DARK
DEF TYPES_END EQU const_value

DEF NUM_TYPES EQU TYPES_END + UNUSED_TYPES - UNUSED_TYPES_END - 1 ; discount BIRD

DEF POKEDEX_TYPE_STRING_LENGTH EQU 9
