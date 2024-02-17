MACRO mon_cry
; index, pitch, length
	dw \1, \2, \3
ENDM

PokemonCries::
; entries correspond to constants/pokemon_constants.asm
	table_width MON_CRY_LENGTH, PokemonCries
	mon_cry CRY_BULBIZARRE,   128,  129 ; BULBIZARRE
	mon_cry CRY_BULBIZARRE,    32,  256 ; HERBIZARRE
	mon_cry CRY_BULBIZARRE,     0,  320 ; FLORIZARRE
	mon_cry CRY_CHARMANDER,   96,  192 ; CHARMANDER
	mon_cry CRY_CHARMANDER,   32,  192 ; CHARMELEON
	mon_cry CRY_CHARMANDER,    0,  256 ; DRACAUFEU
	mon_cry CRY_CARAPUCE,     96,  192 ; CARAPUCE
	mon_cry CRY_CARAPUCE,     32,  192 ; CARABAFFE
	mon_cry CRY_BLASTOISE,     0,  256 ; BLASTOISE
	mon_cry CRY_CHENIPAN,    128,  160 ; CHENIPAN
	mon_cry CRY_CHRYSACIER,     204,  129 ; CHRYSACIER
	mon_cry CRY_CHENIPAN,    119,  192 ; BUTTERFREE
	mon_cry CRY_ASPICOT,      238,  129 ; ASPICOT
	mon_cry CRY_BLASTOISE,   255,  129 ; COCONFORT
	mon_cry CRY_BLASTOISE,    96,  256 ; DARDARGNAN
	mon_cry CRY_PIDGEY,      223,  132 ; PIDGEY
	mon_cry CRY_PIDGEOTTO,    40,  320 ; PIDGEOTTO
	mon_cry CRY_PIDGEOTTO,    17,  383 ; PIDGEOT
	mon_cry CRY_RATTATA,       0,  256 ; RATTATA
	mon_cry CRY_RATTATA,      32,  383 ; RATICATE
	mon_cry CRY_SPEAROW,       0,  256 ; SPEAROW
	mon_cry CRY_FEAROW,       64,  288 ; FEAROW
	mon_cry CRY_ABO,        18,  192 ; ABO
	mon_cry CRY_ABO,       224,  144 ; ARBOK
	mon_cry CRY_BULBIZARRE,   238,  129 ; PIKACHU
	mon_cry CRY_RAICHU,      238,  136 ; RAICHU
	mon_cry CRY_NIDORAN_M,    32,  192 ; SANDSHREW
	mon_cry CRY_NIDORAN_M,   255,  383 ; SANDSLASH
	mon_cry CRY_NIDORAN_F,     0,  256 ; NIDORAN_F
	mon_cry CRY_NIDORAN_F,    44,  352 ; NIDORINA
	mon_cry CRY_NIDOQUEEN,     0,  256 ; NIDOQUEEN
	mon_cry CRY_NIDORAN_M,     0,  256 ; NIDORAN_M
	mon_cry CRY_NIDORAN_M,    44,  320 ; NIDORINO
	mon_cry CRY_RAICHU,        0,  256 ; NIDOKING
	mon_cry CRY_CLEFAIRY,    204,  129 ; CLEFAIRY
	mon_cry CRY_CLEFAIRY,    170,  160 ; CLEFABLE
	mon_cry CRY_GOUPIX,       79,  144 ; GOUPIX
	mon_cry CRY_GOUPIX,      136,  224 ; FEUNARD
	mon_cry CRY_PIDGEY,      255,  181 ; JIGGLYPUFF
	mon_cry CRY_PIDGEY,      104,  224 ; GRODOUDOU
	mon_cry CRY_CARAPUCE,    224,  256 ; ZUBAT
	mon_cry CRY_CARAPUCE,    250,  256 ; GOLBAT
	mon_cry CRY_ODDISH,      221,  129 ; ODDISH
	mon_cry CRY_ODDISH,      170,  192 ; GLOOM
	mon_cry CRY_VILEPLUME,    34,  383 ; VILEPLUME
	mon_cry CRY_PARAS,        32,  352 ; PARAS
	mon_cry CRY_PARAS,        66,  383 ; PARASECT
	mon_cry CRY_VENONAT,      68,  192 ; VENONAT
	mon_cry CRY_VENONAT,      41,  256 ; AEROMITE
	mon_cry CRY_DIGLETT,     170,  129 ; DIGLETT
	mon_cry CRY_DIGLETT,      42,  144 ; DUGTRIO
	mon_cry CRY_CLEFAIRY,    119,  144 ; MEOWTH
	mon_cry CRY_CLEFAIRY,    153,  383 ; PERSIAN
	mon_cry CRY_PSYDUCK,      32,  224 ; PSYDUCK
	mon_cry CRY_PSYDUCK,     255,  192 ; AKWAKWAK
	mon_cry CRY_NIDOQUEEN,   221,  224 ; FEROSINGE
	mon_cry CRY_NIDOQUEEN,   175,  192 ; COLOSSINGE
	mon_cry CRY_CANINOS,    32,  192 ; CANINOS
	mon_cry CRY_ASPICOT,        0,  256 ; ARCANIN
	mon_cry CRY_PIDGEY,      255,  383 ; POLIWAG
	mon_cry CRY_PIDGEY,      119,  224 ; POLIWHIRL
	mon_cry CRY_PIDGEY,        0,  383 ; POLIWRATH
	mon_cry CRY_CHRYSACIER,     192,  129 ; ABRA
	mon_cry CRY_CHRYSACIER,     168,  320 ; KADABRA
	mon_cry CRY_CHRYSACIER,     152,  383 ; ALAKAZAM
	mon_cry CRY_CANINOS,   238,  129 ; MACHOP
	mon_cry CRY_CANINOS,    72,  224 ; MACHOKE
	mon_cry CRY_CANINOS,     8,  320 ; MACHAMP
	mon_cry CRY_PSYDUCK,      85,  129 ; CHETIFLOR
	mon_cry CRY_BOUSTIFLOR,   68,  160 ; BOUSTIFLOR
	mon_cry CRY_BOUSTIFLOR,  102,  332 ; EMPIFLOR
	mon_cry CRY_VENONAT,       0,  256 ; TENTACOOL
	mon_cry CRY_VENONAT,     238,  383 ; TENTACRUEL
	mon_cry CRY_GOUPIX,      240,  144 ; GEODUDE
	mon_cry CRY_GOUPIX,        0,  256 ; GRAVALANCH
	mon_cry CRY_GROLEM,       224,  192 ; GROLEM
	mon_cry CRY_BOUSTIFLOR,    0,  256 ; PONYTA
	mon_cry CRY_BOUSTIFLOR,   32,  320 ; GALOPA
	mon_cry CRY_SLOWPOKE,      0,  256 ; SLOWPOKE
	mon_cry CRY_CANINOS,     0,  256 ; FLAGADOSS
	mon_cry CRY_CHRYSACIER,     128,  224 ; MAGNEMITE
	mon_cry CRY_CHRYSACIER,      32,  320 ; MAGNETON
	mon_cry CRY_SPEAROW,     221,  129 ; CANARTICHO
	mon_cry CRY_DIGLETT,     187,  129 ; DODUO
	mon_cry CRY_DIGLETT,     153,  160 ; DODRIO
	mon_cry CRY_SEEL,        136,  320 ; SEEL
	mon_cry CRY_SEEL,         35,  383 ; LAMANTINE
	mon_cry CRY_GRIMER,        0,  256 ; GRIMER
	mon_cry CRY_GROTADMORV,         239,  383 ; GROTADMORV
	mon_cry CRY_FEAROW,        0,  256 ; KOKIYAS
	mon_cry CRY_FEAROW,      111,  352 ; CRUSTABRI
	mon_cry CRY_CHRYSACIER,       0,  256 ; FANTOMINUS
	mon_cry CRY_CHRYSACIER,      48,  192 ; HAUNTER
	mon_cry CRY_GROTADMORV,           0,  383 ; ECTOPLASMA
	mon_cry CRY_ABO,       255,  320 ; ONIX
	mon_cry CRY_DROWZEE,     136,  160 ; DROWZEE
	mon_cry CRY_DROWZEE,     238,  192 ; HYPNOMADE
	mon_cry CRY_KRABBY,       32,  352 ; KRABBY
	mon_cry CRY_KRABBY,      238,  352 ; KRABBOSS
	mon_cry CRY_VOLTORB,     237,  256 ; VOLTORB
	mon_cry CRY_VOLTORB,     168,  272 ; ELECTRODE
	mon_cry CRY_DIGLETT,       0,  256 ; EXEGGCUTE
	mon_cry CRY_DROWZEE,       0,  256 ; EXEGGUTOR
	mon_cry CRY_CLEFAIRY,      0,  256 ; CUBONE
	mon_cry CRY_ODDISH,       79,  224 ; MAROWAK
	mon_cry CRY_GROLEM,       128,  320 ; KICKLEE
	mon_cry CRY_SEEL,        238,  320 ; HITMONCHAN
	mon_cry CRY_SEEL,          0,  256 ; EXCELANGUE
	mon_cry CRY_GROLEM,       230,  349 ; KOFFING
	mon_cry CRY_GROLEM,       255,  383 ; WEEZING
	mon_cry CRY_CHARMANDER,    0,  256 ; RHYHORN
	mon_cry CRY_RHYDON,        0,  256 ; RHYDON
	mon_cry CRY_PIDGEOTTO,    10,  320 ; CHANSEY
	mon_cry CRY_GROLEM,         0,  256 ; TANGELA
	mon_cry CRY_KANGOUREX,    0,  256 ; KANGOUREX
	mon_cry CRY_CLEFAIRY,    153,  144 ; HYPOTREMPE
	mon_cry CRY_CLEFAIRY,     60,  129 ; HYPOCEAN
	mon_cry CRY_CHENIPAN,    128,  192 ; GOLDEEN
	mon_cry CRY_CHENIPAN,     16,  383 ; SEAKING
	mon_cry CRY_PARAS,         2,  160 ; STARYU
	mon_cry CRY_PARAS,         0,  256 ; STARMIE
	mon_cry CRY_KRABBY,        8,  192 ; MR__MIME
	mon_cry CRY_CHENIPAN,      0,  256 ; INSECATEUR
	mon_cry CRY_DROWZEE,     255,  383 ; JYNX
	mon_cry CRY_VOLTORB,     143,  383 ; ELEKTEK
	mon_cry CRY_CHARMANDER,  255,  176 ; MAGMAR
	mon_cry CRY_PIDGEOTTO,     0,  256 ; PINSIR
	mon_cry CRY_CARAPUCE,     17,  192 ; TAUROS
	mon_cry CRY_ABO,       128,  128 ; MAGIKARP
	mon_cry CRY_ABO,         0,  256 ; GYARADOS
	mon_cry CRY_LAPRAS,        0,  256 ; LAPRAS
	mon_cry CRY_PIDGEY,      255,  383 ; DITTO
	mon_cry CRY_VENONAT,     136,  224 ; EVOLI
	mon_cry CRY_VENONAT,     170,  383 ; AQUALI
	mon_cry CRY_VENONAT,      61,  256 ; JOLTEON
	mon_cry CRY_VENONAT,      16,  160 ; FLAREON
	mon_cry CRY_BOUSTIFLOR,  170,  383 ; PORYGON
	mon_cry CRY_CANINOS,   240,  129 ; AMONITA
	mon_cry CRY_CANINOS,   255,  192 ; AMONISTAR
	mon_cry CRY_CHENIPAN,    187,  192 ; KABUTO
	mon_cry CRY_FEAROW,      238,  129 ; KABUTOPS
	mon_cry CRY_VILEPLUME,    32,  368 ; AERODACTYL
	mon_cry CRY_GRIMER,       85,  129 ; SNORLAX
	mon_cry CRY_RAICHU,      128,  192 ; ARTIKODIN
	mon_cry CRY_FEAROW,      255,  256 ; ELECTHOR
	mon_cry CRY_RAICHU,      248,  192 ; MOLTRES
	mon_cry CRY_BULBIZARRE,    96,  192 ; DRATINI
	mon_cry CRY_BULBIZARRE,    64,  256 ; DRACO
	mon_cry CRY_BULBIZARRE,    60,  320 ; DRACOLOSSE
	mon_cry CRY_PARAS,       153,  383 ; MEWTWO
	mon_cry CRY_PARAS,       238,  383 ; MEW
	mon_cry CRY_GERMIGNON,   -16,  176 ; GERMIGNON
	mon_cry CRY_GERMIGNON,   -34,  288 ; BAYLEEF
	mon_cry CRY_GERMIGNON,  -183,  512 ; MEGANIUM
	mon_cry CRY_HERICENDRE,   839,  128 ; HERICENDRE
	mon_cry CRY_HERICENDRE,   801,  288 ; FEURISSON
	mon_cry CRY_TYPHLOSION, 3840,  212 ; TYPHLOSION
	mon_cry CRY_KAIMINUS,   1132,  232 ; KAIMINUS
	mon_cry CRY_KAIMINUS,   1088,  272 ; CROCRODIL
	mon_cry CRY_KAIMINUS,   1020,  384 ; ALIGATUEUR
	mon_cry CRY_FOUINETTE,     138,  184 ; FOUINETTE
	mon_cry CRY_FOUINETTE,     107,  258 ; FOUINAR
	mon_cry CRY_HOOTHOOT,    145,  216 ; HOOTHOOT
	mon_cry CRY_HOOTHOOT,      0,  416 ; NOCTOWL
	mon_cry CRY_COXY,        0,  222 ; COXY
	mon_cry CRY_COXY,     -150,  312 ; COXYCLAQUE
	mon_cry CRY_SPINARAK,     17,  512 ; SPINARAK
	mon_cry CRY_SPINARAK,   -174,  482 ; ARIADOS
	mon_cry CRY_CARAPUCE,    -16,  320 ; CROBAT
	mon_cry CRY_HERICENDRE,   969,  320 ; CHINCHOU
	mon_cry CRY_HERICENDRE,   720,  272 ; LANTURN
	mon_cry CRY_PICHU,         0,  320 ; PICHU
	mon_cry CRY_CLEFFA,       97,  145 ; CLEFFA
	mon_cry CRY_GERMIGNON,   232,  232 ; IGGLYBUFF
	mon_cry CRY_TOGEPI,       16,  256 ; TOGEPI
	mon_cry CRY_TOGETIC,      59,   56 ; TOGETIC
	mon_cry CRY_NATU,       -103,  256 ; NATU
	mon_cry CRY_NATU,       -167,  360 ; XATU
	mon_cry CRY_MAREEP,       34,  216 ; MAREEP
	mon_cry CRY_MAREEP,       -7,  384 ; LAINERGIE
	mon_cry CRY_AMPHAROS,   -124,  232 ; AMPHAROS
	mon_cry CRY_CLEFFA,      132,  336 ; JOLIFLOR
	mon_cry CRY_MARILL,      283,  288 ; MARILL
	mon_cry CRY_MARILL,      182,  384 ; AZUMARILL
	mon_cry CRY_CLEFFA,     3904,  384 ; SUDOWOODO
	mon_cry CRY_CLEFFA,     -675,  456 ; POLITOED
	mon_cry CRY_CLEFFA,       59,  200 ; GRANIVOL
	mon_cry CRY_CLEFFA,       39,  312 ; FLORAVOL
	mon_cry CRY_CLEFFA,        0,  384 ; COTOVOL
	mon_cry CRY_CAPUMAIN,       -81,  232 ; CAPUMAIN
	mon_cry CRY_MARILL,      299,  184 ; SUNKERN
	mon_cry CRY_HELIATRONC,    -32,  384 ; HELIATRONC
	mon_cry CRY_KAIMINUS,     49,  200 ; YANMA
	mon_cry CRY_AXOLOTO,      147,  175 ; AXOLOTO
	mon_cry CRY_AXOLOTO,     -198,  320 ; QUAGSIRE
	mon_cry CRY_CAPUMAIN,       162,  320 ; ESPEON
	mon_cry CRY_VENONAT,    -233,  240 ; UMBREON
	mon_cry CRY_MARILL,      -31,  384 ; CORNEBRE
	mon_cry CRY_SLOWKING,    260,  512 ; SLOWKING
	mon_cry CRY_HOOTHOOT,    304,  232 ; FEUFOREVE
	mon_cry CRY_HOOTHOOT,    354,  256 ; UNOWN
	mon_cry CRY_AMPHAROS,    635,  324 ; WOBBUFFET
	mon_cry CRY_GIRAFARIG,    65,  512 ; GIRAFARIG
	mon_cry CRY_SLOWKING,    128,  256 ; PINECO
	mon_cry CRY_SLOWKING,      0,  384 ; FORETRESS
	mon_cry CRY_INSOLOURDO,   452,  256 ; INSOLOURDO
	mon_cry CRY_GLIGAR,     -258,  256 ; GLIGAR
	mon_cry CRY_TYPHLOSION,  239,  247 ; STEELIX
	mon_cry CRY_INSOLOURDO,   274,  232 ; SNUBBULL
	mon_cry CRY_INSOLOURDO,     0,  384 ; GRANBULL
	mon_cry CRY_SLOWKING,    352,  224 ; QWILFISH
	mon_cry CRY_AMPHAROS,      0,  352 ; CIZAYOX
	mon_cry CRY_INSOLOURDO,   656,  168 ; CARATROC
	mon_cry CRY_AMPHAROS,     53,  224 ; HERACROSS
	mon_cry CRY_AXOLOTO,       83,  175 ; FARFURET
	mon_cry CRY_TEDDIURSA,  1954,  110 ; TEDDIURSA
	mon_cry CRY_TEDDIURSA,  1600,  216 ; URSARING
	mon_cry CRY_SLUGMA,     -472,  320 ; SLUGMA
	mon_cry CRY_MAGCARGO,   -525,  448 ; MAGCARGO
	mon_cry CRY_HERICENDRE,   510,  320 ; SWINUB
	mon_cry CRY_MAGCARGO,   -265,  256 ; COCHIGNON
	mon_cry CRY_MAGCARGO,    161,  232 ; CORAYON
	mon_cry CRY_HELIATRONC,     13,  256 ; REMORAID
	mon_cry CRY_KAIMINUS,      0,  384 ; OCTILLERY
	mon_cry CRY_TEDDIURSA,     2,  106 ; CADOIZO
	mon_cry CRY_DEMANTA,    -190,  240 ; DEMANTA
	mon_cry CRY_AMPHAROS,   2217,  384 ; AIRMURE
	mon_cry CRY_HERICENDRE,    57,  320 ; HOUNDOUR
	mon_cry CRY_KAIMINUS,   -266,  256 ; DEMOLOSSE
	mon_cry CRY_SLUGMA,      763,  256 ; HYPOROI
	mon_cry CRY_FOUINETTE,      72,  560 ; PHANPY
	mon_cry CRY_DONPHAN,       0,  416 ; DONPHAN
	mon_cry CRY_GIRAFARIG,   115,  576 ; PORYGON2
	mon_cry CRY_CAPUMAIN,      -352,  384 ; CERFROUSSE
	mon_cry CRY_PICHU,      -538,  496 ; SMEARGLE
	mon_cry CRY_CAPUMAIN,        44,  264 ; DEBUGANT
	mon_cry CRY_SLUGMA,        0,  256 ; KAPOERA
	mon_cry CRY_MARILL,      104,  256 ; SMOOCHUM
	mon_cry CRY_HELIATRONC,   -728,  180 ; ELEKID
	mon_cry CRY_TEDDIURSA,   374,   58 ; MAGBY
	mon_cry CRY_GLIGAR,     -461,  416 ; ECREMEUH
	mon_cry CRY_SLOWKING,    659,  320 ; LEUPHORIE
	mon_cry CRY_RAIKOU,      558,  288 ; RAIKOU
	mon_cry CRY_ENTEI,         0,  416 ; ENTEI
	mon_cry CRY_MAGCARGO,      0,  384 ; SUICUNE
	mon_cry CRY_RAIKOU,       95,  208 ; EMBRYLEX
	mon_cry CRY_SPINARAK,   -475,  336 ; PUPITAR
	mon_cry CRY_RAIKOU,     -256,  384 ; TYRANITAR
	mon_cry CRY_TYPHLOSION,    0,  256 ; LUGIA
	mon_cry CRY_CAPUMAIN,         0,  384 ; HO_OH
	mon_cry CRY_ENTEI,       330,  273 ; CELEBI
	assert_table_length NUM_POKEMON
	mon_cry CRY_NIDORAN_M,     0,    0 ; 252
	mon_cry CRY_NIDORAN_M,     0,    0 ; 253
	mon_cry CRY_NIDORAN_M,     0,    0 ; 254
	mon_cry CRY_NIDORAN_M,     0,    0 ; 255
	assert_table_length $ff
