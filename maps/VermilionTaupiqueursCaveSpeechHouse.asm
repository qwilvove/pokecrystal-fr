	object_const_def
	const VERMILIONTAUPIQUEURSCAVESPEECHHOUSE_GENTLEMAN

VermilionTaupiqueursCaveSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionTaupiqueursCaveSpeechHouseGentlemanScript:
	jumptextfaceplayer VermilionTaupiqueursCaveSpeechHouseGentlemanText

VermilionTaupiqueursCaveSpeechHouseGentlemanText:
	text "Pendant des années"
	line "les TAUPIQUEUR ont"
	cont "creusé un énorme"
	cont "tunnel."

	para "Ce tunnel va vers"
	line "une ville loin-"
	cont "taine."
	done

VermilionTaupiqueursCaveSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 6
	warp_event  3,  7, VERMILION_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VermilionTaupiqueursCaveSpeechHouseGentlemanScript, -1
