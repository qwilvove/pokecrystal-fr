TreeMons:
; entries correspond to TREEMON_SET_* constants
	table_width 2
	dw TreeMonSet_None
	dw TreeMonSet_Canyon
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	dw TreeMonSet_Rock
	assert_table_length NUM_TREEMON_SETS
	dw TreeMonSet_None ; unused

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_None:
; no encounter data

TreeMonSet_Canyon:
; common
	db 50, PIAFABEC,    10
	db 15, PIAFABEC,    10
	db 15, PIAFABEC,    10
	db 10, CAPUMAIN,      10
	db  5, CAPUMAIN,      10
	db  5, CAPUMAIN,      10
	db -1
; rare
	db 50, PIAFABEC,    10
	db 15, HERACROSS,  10
	db 15, HERACROSS,  10
	db 10, CAPUMAIN,      10
	db  5, CAPUMAIN,      10
	db  5, CAPUMAIN,      10
	db -1

TreeMonSet_Town:
; common
	db 50, PIAFABEC,    10
	db 15, ABO,      10
	db 15, PIAFABEC,    10
	db 10, CAPUMAIN,      10
	db  5, CAPUMAIN,      10
	db  5, CAPUMAIN,      10
	db -1
; rare
	db 50, PIAFABEC,    10
	db 15, HERACROSS,  10
	db 15, HERACROSS,  10
	db 10, CAPUMAIN,      10
	db  5, CAPUMAIN,      10
	db  5, CAPUMAIN,      10
	db -1

TreeMonSet_Route:
; common
	db 50, HOOTHOOT,   10
	db 15, MIMIGAL,   10
	db 15, COXY,     10
	db 10, NOEUNOEUF,  10
	db  5, NOEUNOEUF,  10
	db  5, NOEUNOEUF,  10
	db -1
; rare
	db 50, HOOTHOOT,   10
	db 15, POMDEPIK,     10
	db 15, POMDEPIK,     10
	db 10, NOEUNOEUF,  10
	db  5, NOEUNOEUF,  10
	db  5, NOEUNOEUF,  10
	db -1

TreeMonSet_Kanto:
; common
	db 50, HOOTHOOT,   10
	db 15, ABO,      10
	db 15, HOOTHOOT,   10
	db 10, NOEUNOEUF,  10
	db  5, NOEUNOEUF,  10
	db  5, NOEUNOEUF,  10
	db -1
; rare
	db 50, HOOTHOOT,   10
	db 15, POMDEPIK,     10
	db 15, POMDEPIK,     10
	db 10, NOEUNOEUF,  10
	db  5, NOEUNOEUF,  10
	db  5, NOEUNOEUF,  10
	db -1

TreeMonSet_Lake:
; common
	db 50, HOOTHOOT,   10
	db 15, MIMITOSS,    10
	db 15, HOOTHOOT,   10
	db 10, NOEUNOEUF,  10
	db  5, NOEUNOEUF,  10
	db  5, NOEUNOEUF,  10
	db -1
; rare
	db 50, HOOTHOOT,   10
	db 15, POMDEPIK,     10
	db 15, POMDEPIK,     10
	db 10, NOEUNOEUF,  10
	db  5, NOEUNOEUF,  10
	db  5, NOEUNOEUF,  10
	db -1

TreeMonSet_Forest:
; common
	db 50, HOOTHOOT,   10
	db 15, POMDEPIK,     10
	db 15, POMDEPIK,     10
	db 10, NOARFANG,    10
	db  5, PAPILUSION, 10
	db  5, DARDARGNAN,   10
	db -1
; rare
	db 50, HOOTHOOT,   10
	db 15, CHENIPAN,   10
	db 15, ASPICOT,     10
	db 10, HOOTHOOT,   10
	db  5, CHRYSACIER,    10
	db  5, COCONFORT,     10
	db -1

TreeMonSet_Rock:
	db 90, KRABBY,     15
	db 10, CARATROC,    15
	db -1
