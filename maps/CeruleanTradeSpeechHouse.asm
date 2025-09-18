	object_const_def
	const CERULEANTRADESPEECHHOUSE_GRANNY
	const CERULEANTRADESPEECHHOUSE_GRAMPS
	const CERULEANTRADESPEECHHOUSE_RHINOFEROS
	const CERULEANTRADESPEECHHOUSE_NOSFERAPTI

CeruleanTradeSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanTradeSpeechHouseGrannyScript:
	jumptextfaceplayer CeruleanTradeSpeechHouseGrannyText

CeruleanTradeSpeechHouseGrampsScript:
	jumptextfaceplayer CeruleanTradeSpeechHouseGrampsText

CeruleanTradeSpeechHouseRhinoferosScript:
	opentext
	writetext CeruleanTradeSpeechHouseRhinoferosText
	cry KANGOUREX
	waitbutton
	closetext
	end

CeruleanTradeSpeechHouseNosferaptiScript:
	opentext
	writetext CeruleanTradeSpeechHouseNosferaptiText
	cry NOSFERAPTI
	waitbutton
	closetext
	end

CeruleanTradeSpeechHouseGrannyText:
	text "Mon mari aime les"
	line "#MON qu'il a"
	cont "eu en faisant des"
	cont "échanges."
	done

CeruleanTradeSpeechHouseGrampsText:
	text "Ah... Super..."
	done

CeruleanTradeSpeechHouseRhinoferosText:
	text "KANGOUREX: Kangou!"
	done

CeruleanTradeSpeechHouseNosferaptiText:
	text "NOSFERAPTI: Ptiii!"
	done

CeruleanTradeSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 3
	warp_event  3,  7, CERULEAN_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanTradeSpeechHouseGrannyScript, -1
	object_event  1,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanTradeSpeechHouseGrampsScript, -1
	object_event  5,  2, SPRITE_RHINOFEROS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeruleanTradeSpeechHouseRhinoferosScript, -1
	object_event  5,  6, SPRITE_NOSFERAPTI, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanTradeSpeechHouseNosferaptiScript, -1
