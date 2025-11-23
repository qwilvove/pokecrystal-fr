; strings correspond to ZARBIWORDS_* constants (see constants/script_constants.asm)
DEF ZARBIWORD_{d:ZARBIWORDS_ESCAPE} EQUS "SORTIE"
DEF ZARBIWORD_{d:ZARBIWORDS_LIGHT}  EQUS "LUMIERE"
DEF ZARBIWORD_{d:ZARBIWORDS_WATER}  EQUS "-EAU-"
DEF ZARBIWORD_{d:ZARBIWORDS_HO_OH}  EQUS "HO-OH"

ZarbiWalls:
; entries correspond to ZARBIWORDS_* constants
	list_start
	for x, NUM_ZARBI_WALLS
		li #ZARBIWORD_{d:x}
	endr
	assert_list_length NUM_ZARBI_WALLS

MenuHeaders_ZarbiWalls:
; entries correspond to ZARBIWORDS_* constants
	table_width ZARBI_WALL_MENU_HEADER_SIZE
	for x, NUM_ZARBI_WALLS
		DEF n = CHARLEN(#ZARBIWORD_{d:x})
		db MENU_BACKUP_TILES ; flags
		menu_coords 9 - n, 4, 10 + n, 9
	endr
	assert_table_length NUM_ZARBI_WALLS
