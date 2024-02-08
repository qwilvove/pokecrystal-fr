RuinsOfAlphAmonitaChamber_MapScripts:
	def_scene_scripts
	scene_script RuinsOfAlphAmonitaChamberCheckWallScene, SCENE_RUINSOFALPHAMONITACHAMBER_CHECK_WALL
	scene_script RuinsOfAlphAmonitaChamberNoopScene,      SCENE_RUINSOFALPHAMONITACHAMBER_NOOP

	def_callbacks
	callback MAPCALLBACK_TILES, RuinsOfAlphAmonitaChamberHiddenDoorsCallback

RuinsOfAlphAmonitaChamberCheckWallScene:
	special AmonitaChamber
	checkevent EVENT_WALL_OPENED_IN_AMONITA_CHAMBER
	iftrue .OpenWall
	end

.OpenWall:
	sdefer RuinsOfAlphAmonitaChamberWallOpenScript
	end

RuinsOfAlphAmonitaChamberNoopScene:
	end

RuinsOfAlphAmonitaChamberHiddenDoorsCallback:
	checkevent EVENT_WALL_OPENED_IN_AMONITA_CHAMBER
	iftrue .WallOpen
	changeblock 4, 0, $2e ; closed wall
.WallOpen:
	checkevent EVENT_SOLVED_AMONITA_PUZZLE
	iffalse .FloorClosed
	endcallback

.FloorClosed:
	changeblock 2, 2, $01 ; left floor
	changeblock 4, 2, $02 ; right floor
	endcallback

RuinsOfAlphAmonitaChamberWallOpenScript:
	pause 30
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 20
	pause 30
	playsound SFX_STRENGTH
	changeblock 4, 0, $30 ; open wall
	refreshmap
	earthquake 50
	setscene SCENE_RUINSOFALPHAMONITACHAMBER_NOOP
	closetext
	end

RuinsOfAlphAmonitaChamberPuzzle:
	reanchormap
	setval UNOWNPUZZLE_AMONITA
	special UnownPuzzle
	closetext
	iftrue .PuzzleComplete
	end

.PuzzleComplete:
	setevent EVENT_RUINS_OF_ALPH_INNER_CHAMBER_TOURISTS
	setevent EVENT_SOLVED_AMONITA_PUZZLE
	setflag ENGINE_UNLOCKED_UNOWNS_L_TO_R
	setmapscene RUINS_OF_ALPH_INNER_CHAMBER, SCENE_RUINSOFALPHINNERCHAMBER_STRANGE_PRESENCE
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 15
	changeblock 2, 2, $18 ; left hole
	changeblock 4, 2, $19 ; right hole
	refreshmap
	playsound SFX_STRENGTH
	earthquake 80
	applymovement PLAYER, RuinsOfAlphAmonitaChamberSkyfallTopMovement
	playsound SFX_KINESIS
	waitsfx
	pause 20
	warpcheck
	end

RuinsOfAlphAmonitaChamberAncientReplica:
	jumptext RuinsOfAlphAmonitaChamberAncientReplicaText

RuinsOfAlphAmonitaChamberDescriptionSign:
	jumptext RuinsOfAlphAmonitaChamberDescriptionText

RuinsOfAlphAmonitaChamberWallPatternLeft:
	opentext
	writetext RuinsOfAlphAmonitaChamberWallPatternLeftText
	setval UNOWNWORDS_WATER
	special DisplayUnownWords
	closetext
	end

RuinsOfAlphAmonitaChamberWallPatternRight:
	checkevent EVENT_WALL_OPENED_IN_AMONITA_CHAMBER
	iftrue .WallOpen
	opentext
	writetext RuinsOfAlphAmonitaChamberWallPatternRightText
	setval UNOWNWORDS_WATER
	special DisplayUnownWords
	closetext
	end

.WallOpen:
	opentext
	writetext RuinsOfAlphAmonitaChamberWallHoleText
	waitbutton
	closetext
	end

RuinsOfAlphAmonitaChamberSkyfallTopMovement:
	skyfall_top
	step_end

RuinsOfAlphAmonitaChamberWallPatternLeftText:
	text "Des figures sont"
	line "apparues sur les"
	cont "murs..."
	done

RuinsOfAlphAmonitaChamberUnownText: ; unreferenced
	text "C'est du texte"
	line "ZARBI!"
	done

RuinsOfAlphAmonitaChamberWallPatternRightText:
	text "Des figures sont"
	line "apparues sur les"
	cont "murs..."
	done

RuinsOfAlphAmonitaChamberWallHoleText:
	text "Il y a un gros"
	line "trou dans le mur!"
	done

RuinsOfAlphAmonitaChamberAncientReplicaText:
	text "C'est la réplique"
	line "d'un ancien #-"
	cont "MON."
	done

RuinsOfAlphAmonitaChamberDescriptionText:
	text "Ce #MON glis-"
	line "sait dans l'eau en"

	para "tordant ses dix"
	line "tentacules."
	done

RuinsOfAlphAmonitaChamber_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_OUTSIDE, 3
	warp_event  4,  9, RUINS_OF_ALPH_OUTSIDE, 3
	warp_event  3,  3, RUINS_OF_ALPH_INNER_CHAMBER, 6
	warp_event  4,  3, RUINS_OF_ALPH_INNER_CHAMBER, 7
	warp_event  4,  0, RUINS_OF_ALPH_AMONITA_ITEM_ROOM, 1

	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_READ, RuinsOfAlphAmonitaChamberAncientReplica
	bg_event  5,  3, BGEVENT_READ, RuinsOfAlphAmonitaChamberAncientReplica
	bg_event  3,  2, BGEVENT_UP, RuinsOfAlphAmonitaChamberPuzzle
	bg_event  4,  2, BGEVENT_UP, RuinsOfAlphAmonitaChamberDescriptionSign
	bg_event  3,  0, BGEVENT_UP, RuinsOfAlphAmonitaChamberWallPatternLeft
	bg_event  4,  0, BGEVENT_UP, RuinsOfAlphAmonitaChamberWallPatternRight

	def_object_events
