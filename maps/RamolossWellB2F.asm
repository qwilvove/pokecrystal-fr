	object_const_def
	const RAMOLOSSWELLB2F_GYM_GUIDE
	const RAMOLOSSWELLB2F_POKE_BALL

RamolossWellB2F_MapScripts:
	def_scene_scripts

	def_callbacks

RamolossWellB2FGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_KINGS_ROCK_IN_RAMOLOSS_WELL
	iftrue .GotKingsRock
	writetext RamolossWellB2FGymGuideText
	promptbutton
	verbosegiveitem KINGS_ROCK
	iffalse .NoRoom
	setevent EVENT_GOT_KINGS_ROCK_IN_RAMOLOSS_WELL
.NoRoom:
	closetext
	end

.GotKingsRock:
	writetext RamolossWellB2FGymGuideText_GotKingsRock
	waitbutton
	closetext
	end

RamolossWellB2FTMRainDance:
	itemball TM_RAIN_DANCE

RamolossWellB2FGymGuideText:
	text "J'attends de voir"
	line "l'évolution du"
	cont "RAMOLOSS."

	para "En observant j'ai"
	line "fait une nouvelle"
	cont "découverte."

	para "Un RAMOLOSS avec"
	line "une ROCHE ROYALE"

	para "se fait mordre par"
	line "un KOKIYAS."

	para "Tiens! Je vais te"
	line "donner une ROCHE"
	cont "ROYALE."
	done

RamolossWellB2FGymGuideText_GotKingsRock:
	text "Je serai comme"
	line "RAMOLOSS."

	para "Je serai patient"
	line "et j'en verrai un"
	cont "évoluer."
	done

RamolossWellB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 11, RAMOLOSS_WELL_B1F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  4, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, RamolossWellB2FGymGuideScript, -1
	object_event 15,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RamolossWellB2FTMRainDance, EVENT_RAMOLOSS_WELL_B2F_TM_RAIN_DANCE
