	object_const_def
	const MAHOGANYREDLEVIATORSPEECHHOUSE_BLACK_BELT
	const MAHOGANYREDLEVIATORSPEECHHOUSE_TEACHER

MahoganyRedLeviatorSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MahoganyRedLeviatorSpeechHouseBlackBeltScript:
	jumptextfaceplayer MahoganyRedLeviatorSpeechHouseBlackBeltText

MahoganyRedLeviatorSpeechHouseTeacherScript:
	faceplayer
	opentext
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue .RocketsInRadioTower
	writetext MahoganyRedLeviatorSpeechHouseTeacherText
	waitbutton
	closetext
	end

.RocketsInRadioTower:
	writetext MahoganyRedLeviatorSpeechHouseTeacherText_RocketsInRadioTower
	waitbutton
	closetext
	end

MahoganyRedLeviatorSpeechHouseUnusedBookshelf1: ; unreferenced
	jumpstd PictureBookshelfScript

MahoganyRedLeviatorSpeechHouseUnusedBookshelf2: ; unreferenced
	jumpstd MagazineBookshelfScript

MahoganyRedLeviatorSpeechHouseBlackBeltText:
	text "J'ai entendu dire"
	line "qu'un LEVIATOR"
	cont "rouge est apparu"
	cont "au LAC."

	para "C'est bizarre..."
	line "Même un LEVIATOR"

	para "ordinaire est très"
	line "rare dans ce LAC!"
	done

MahoganyRedLeviatorSpeechHouseTeacherText:
	text "Mon émission de"
	line "radio préférée?"
	cont "La #MUSIQUE!"
	done

MahoganyRedLeviatorSpeechHouseTeacherText_RocketsInRadioTower:
	text "J'ai entendu des"
	line "rires à la radio."

	para "Ca donne la chair"
	line "de poule!"
	done

MahoganyRedLeviatorSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, MAHOGANY_TOWN, 2
	warp_event  3,  7, MAHOGANY_TOWN, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahoganyRedLeviatorSpeechHouseBlackBeltScript, -1
	object_event  6,  5, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MahoganyRedLeviatorSpeechHouseTeacherScript, -1
