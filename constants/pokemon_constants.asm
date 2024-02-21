; pokemon ids
; indexes for:
; - PokemonNames (see data/pokemon/names.asm)
; - BaseData (see data/pokemon/base_stats.asm)
; - EvosAttacksPointers (see data/pokemon/evos_attacks_pointers.asm)
; - EggMovePointers (see data/pokemon/egg_move_pointers.asm)
; - PokemonCries (see data/pokemon/cries.asm)
; - MonMenuIcons (see data/pokemon/menu_icons.asm)
; - PokemonPicPointers (see data/pokemon/pic_pointers.asm)
; - PokemonPalettes (see data/pokemon/palettes.asm)
; - PokedexDataPointerTable (see data/pokemon/dex_entry_pointers.asm)
; - AlphabeticalPokedexOrder (see data/pokemon/dex_order_alpha.asm)
; - NewPokedexOrder (see data/pokemon/dex_order_new.asm)
; - Pokered_MonIndices (see data/pokemon/gen1_order.asm)
; - Footprints (see gfx/footprints.asm)
; - AnimationPointers (see gfx/pokemon/anim_pointers.asm)
; - AnimationIdlePointers (see gfx/pokemon/idle_pointers.asm)
; - BitmasksPointers (see gfx/pokemon/bitmask_pointers.asm)
; - FramesPointers (see gfx/pokemon/frame_pointers.asm)
; - EZChat_SortedPokemon (see data/pokemon/ezchat_order.asm)
	const_def 1
	const BULBIZARRE  ; 01
	const HERBIZARRE    ; 02
	const FLORIZARRE   ; 03
	const CHARMANDER ; 04
	const CHARMELEON ; 05
	const DRACAUFEU  ; 06
	const CARAPUCE   ; 07
	const CARABAFFE  ; 08
	const BLASTOISE  ; 09
	const CHENIPAN   ; 0a
	const CHRYSACIER    ; 0b
	const BUTTERFREE ; 0c
	const ASPICOT     ; 0d
	const COCONFORT     ; 0e
	const DARDARGNAN   ; 0f
	const PIDGEY     ; 10
	const PIDGEOTTO  ; 11
	const PIDGEOT    ; 12
	const RATTATA    ; 13
	const RATICATE   ; 14
	const SPEAROW    ; 15
	const FEAROW     ; 16
	const ABO      ; 17
	const ARBOK      ; 18
	const PIKACHU    ; 19
	const RAICHU     ; 1a
	const SANDSHREW  ; 1b
	const SANDSLASH  ; 1c
	const NIDORAN_F  ; 1d
	const NIDORINA   ; 1e
	const NIDOQUEEN  ; 1f
	const NIDORAN_M  ; 20
	const NIDORINO   ; 21
	const NIDOKING   ; 22
	const MELOFEE   ; 23
	const MELODELFE   ; 24
	const GOUPIX     ; 25
	const FEUNARD  ; 26
	const JIGGLYPUFF ; 27
	const GRODOUDOU ; 28
	const NOSFERAPTI      ; 29
	const NOSFERALTO     ; 2a
	const MYSTHERBE     ; 2b
	const GLOOM      ; 2c
	const VILEPLUME  ; 2d
	const PARAS      ; 2e
	const PARASECT   ; 2f
	const MIMITOSS    ; 30
	const AEROMITE   ; 31
	const DIGLETT    ; 32
	const DUGTRIO    ; 33
	const MIAOUSS     ; 34
	const PERSIAN    ; 35
	const PSYDUCK    ; 36
	const AKWAKWAK    ; 37
	const FEROSINGE     ; 38
	const COLOSSINGE   ; 39
	const CANINOS  ; 3a
	const ARCANIN   ; 3b
	const POLIWAG    ; 3c
	const POLIWHIRL  ; 3d
	const POLIWRATH  ; 3e
	const ABRA       ; 3f
	const KADABRA    ; 40
	const ALAKAZAM   ; 41
	const MACHOC     ; 42
	const MACHOPEUR    ; 43
	const MACKOGNEUR    ; 44
	const CHETIFLOR ; 45
	const BOUSTIFLOR ; 46
	const EMPIFLOR ; 47
	const TENTACOOL  ; 48
	const TENTACRUEL ; 49
	const GEODUDE    ; 4a
	const GRAVALANCH   ; 4b
	const GROLEM      ; 4c
	const PONYTA     ; 4d
	const GALOPA   ; 4e
	const SLOWPOKE   ; 4f
	const FLAGADOSS    ; 50
	const MAGNETI  ; 51
	const MAGNETON   ; 52
	const CANARTICHO ; 53
	const DODUO      ; 54
	const DODRIO     ; 55
	const SEEL       ; 56
	const LAMANTINE    ; 57
	const GRIMER     ; 58
	const GROTADMORV        ; 59
	const KOKIYAS   ; 5a
	const CRUSTABRI   ; 5b
	const FANTOMINUS     ; 5c
	const HAUNTER    ; 5d
	const ECTOPLASMA     ; 5e
	const ONIX       ; 5f
	const DROWZEE    ; 60
	const HYPNOMADE      ; 61
	const KRABBY     ; 62
	const KRABBOSS    ; 63
	const VOLTORB    ; 64
	const ELECTRODE  ; 65
	const NOEUNOEUF  ; 66
	const NOADKOKO  ; 67
	const CUBONE     ; 68
	const MAROWAK    ; 69
	const KICKLEE  ; 6a
	const HITMONCHAN ; 6b
	const EXCELANGUE  ; 6c
	const KOFFING    ; 6d
	const WEEZING    ; 6e
	const RHYHORN    ; 6f
	const RHYDON     ; 70
	const LEVEINARD    ; 71
	const TANGELA    ; 72
	const KANGOUREX ; 73
	const HYPOTREMPE     ; 74
	const HYPOCEAN     ; 75
	const GOLDEEN    ; 76
	const SEAKING    ; 77
	const STARYU     ; 78
	const STARMIE    ; 79
	const M__MIME   ; 7a
	const INSECATEUR    ; 7b
	const LIPPOUTOU       ; 7c
	const ELEKTEK ; 7d
	const MAGMAR     ; 7e
	const PINSIR     ; 7f
	const TAUROS     ; 80
	const MAGICARPE   ; 81
	const LEVIATOR   ; 82
	const LOKHLASS     ; 83
	const METAMORPH      ; 84
	const EVOLI      ; 85
	const AQUALI   ; 86
	const JOLTEON    ; 87
	const FLAREON    ; 88
	const PORYGON    ; 89
	const AMONITA    ; 8a
	const AMONISTAR    ; 8b
	const KABUTO     ; 8c
	const KABUTOPS   ; 8d
	const AERODACTYL ; 8e
	const SNORLAX    ; 8f
	const ARTIKODIN   ; 90
	const ELECTHOR     ; 91
	const MOLTRES    ; 92
	const MINIDRACO    ; 93
	const DRACO  ; 94
	const DRACOLOSSE  ; 95
	const MEWTWO     ; 96
	const MEW        ; 97
DEF JOHTO_POKEMON EQU const_value
	const GERMIGNON  ; 98
	const MACRONIUM    ; 99
	const MEGANIUM   ; 9a
	const HERICENDRE  ; 9b
	const FEURISSON    ; 9c
	const TYPHLOSION ; 9d
	const KAIMINUS   ; 9e
	const CROCRODIL   ; 9f
	const ALIGATUEUR ; a0
	const FOUINETTE    ; a1
	const FOUINAR     ; a2
	const HOOTHOOT   ; a3
	const NOARFANG    ; a4
	const COXY     ; a5
	const COXYCLAQUE     ; a6
	const MIMIGAL   ; a7
	const MIGALOS    ; a8
	const CROBAT     ; a9
	const LOUPIO   ; aa
	const LANTURN    ; ab
	const PICHU      ; ac
	const MELO     ; ad
	const IGGLYBUFF  ; ae
	const TOGEPI     ; af
	const TOGETIC    ; b0
	const NATU       ; b1
	const XATU       ; b2
	const MAREEP     ; b3
	const LAINERGIE    ; b4
	const AMPHAROS   ; b5
	const JOLIFLOR  ; b6
	const MARILL     ; b7
	const AZUMARILL  ; b8
	const SUDOWOODO  ; b9
	const POLITOED   ; ba
	const GRANIVOL     ; bb
	const FLORAVOL   ; bc
	const COTOVOL   ; bd
	const CAPUMAIN      ; be
	const SUNKERN    ; bf
	const HELIATRONC   ; c0
	const YANMA      ; c1
	const AXOLOTO     ; c2
	const MARAISTE   ; c3
	const MENTALI     ; c4
	const NOCTALI    ; c5
	const CORNEBRE    ; c6
	const SLOWKING   ; c7
	const FEUFOREVE ; c8
	const UNOWN      ; c9
	const WOBBUFFET  ; ca
	const GIRAFARIG  ; cb
	const PINECO     ; cc
	const FORETRESS ; cd
	const INSOLOURDO  ; ce
	const GLIGAR     ; cf
	const STEELIX    ; d0
	const SNUBBULL   ; d1
	const GRANBULL   ; d2
	const QWILFISH   ; d3
	const CIZAYOX     ; d4
	const CARATROC    ; d5
	const HERACROSS  ; d6
	const FARFURET    ; d7
	const TEDDIURSA  ; d8
	const URSARING   ; d9
	const LIMAGMA     ; da
	const MAGCARGO   ; db
	const MARCACRIN     ; dc
	const COCHIGNON  ; dd
	const CORAYON    ; de
	const REMORAID   ; df
	const OCTILLERY  ; e0
	const CADOIZO   ; e1
	const DEMANTA    ; e2
	const AIRMURE   ; e3
	const MALOSSE   ; e4
	const DEMOLOSSE   ; e5
	const HYPOROI    ; e6
	const PHANPY     ; e7
	const DONPHAN    ; e8
	const PORYGON2   ; e9
	const CERFROUSSE   ; ea
	const SMEARGLE   ; eb
	const DEBUGANT    ; ec
	const KAPOERA  ; ed
	const LIPPOUTI   ; ee
	const ELEKID     ; ef
	const MAGBY      ; f0
	const ECREMEUH    ; f1
	const LEUPHORIE    ; f2
	const RAIKOU     ; f3
	const ENTEI      ; f4
	const SUICUNE    ; f5
	const EMBRYLEX   ; f6
	const PUPITAR    ; f7
	const TYRANITAR  ; f8
	const LUGIA      ; f9
	const HO_OH      ; fa
	const CELEBI     ; fb
DEF NUM_POKEMON EQU const_value - 1
	const_skip       ; fc
	const EGG        ; fd

; Unown forms
; indexes for:
; - UnownWords (see data/pokemon/unown_words.asm)
; - UnownPicPointers (see data/pokemon/unown_pic_pointers.asm)
; - UnownAnimationPointers (see gfx/pokemon/unown_anim_pointers.asm)
; - UnownAnimationIdlePointers (see gfx/pokemon/unown_idle_pointers.asm)
; - UnownBitmasksPointers (see gfx/pokemon/unown_bitmask_pointers.asm)
; - UnownFramesPointers (see gfx/pokemon/unown_frame_pointers.asm)
	const_def 1
	const UNOWN_A ;  1
	const UNOWN_B ;  2
	const UNOWN_C ;  3
	const UNOWN_D ;  4
	const UNOWN_E ;  5
	const UNOWN_F ;  6
	const UNOWN_G ;  7
	const UNOWN_H ;  8
	const UNOWN_I ;  9
	const UNOWN_J ; 10
	const UNOWN_K ; 11
	const UNOWN_L ; 12
	const UNOWN_M ; 13
	const UNOWN_N ; 14
	const UNOWN_O ; 15
	const UNOWN_P ; 16
	const UNOWN_Q ; 17
	const UNOWN_R ; 18
	const UNOWN_S ; 19
	const UNOWN_T ; 20
	const UNOWN_U ; 21
	const UNOWN_V ; 22
	const UNOWN_W ; 23
	const UNOWN_X ; 24
	const UNOWN_Y ; 25
	const UNOWN_Z ; 26
DEF NUM_UNOWN EQU const_value - 1 ; 26
