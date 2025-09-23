TypeNames:
; entries correspond to types (see constants/type_constants.asm)
	table_width 2

	dw Normal
	dw Combat
	dw Vol
	dw Poison
	dw Sol
	dw Roche
	dw Bird
	dw Insecte
	dw Spectre
	dw Acier
	assert_table_length UNUSED_TYPES

rept UNUSED_TYPES_END - UNUSED_TYPES - 1 ; discount CURSE_TYPE
	dw Normal
endr
	dw CurseType
	assert_table_length UNUSED_TYPES_END

	dw Feu
	dw Eau
	dw Plante
	dw Electrik
	dw Psy
	dw Ice
	dw Dragon
	dw Dark
	assert_table_length TYPES_END

Normal:    db "NORMAL@"
Combat:  db "COMBAT@"
Vol:    db "VOL@"
Poison:    db "POISON@"
CurseType: db "???@"
Feu:      db "FEU@"
Eau:     db "EAU@"
Plante:     db "PLANTE@"
Electrik:  db "ELECTRIK@"
Psy:   db "PSY@"
Ice:       db "GLACE@"
Sol:    db "SOL@"
Roche:      db "ROCHE@"
Bird:      db "@"
Insecte:       db "INSECTE@"
Spectre:     db "SPECTRE@"
Acier:     db "ACIER@"
Dragon:    db "DRAGON@"
Dark:      db "TENEBRES@"
