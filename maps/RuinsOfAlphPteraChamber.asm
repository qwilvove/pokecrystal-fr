RuinsOfAlphPteraChamber_MapScripts:
	def_scene_scripts
	scene_script RuinsOfAlphPteraChamberCheckWallScene, SCENE_RUINSOFALPHPTERACHAMBER_CHECK_WALL
	scene_script RuinsOfAlphPteraChamberNoopScene,      SCENE_RUINSOFALPHPTERACHAMBER_NOOP

	def_callbacks
	callback MAPCALLBACK_TILES, RuinsOfAlphPteraChamberHiddenDoorsCallback

RuinsOfAlphPteraChamberCheckWallScene:
	checkevent EVENT_WALL_OPENED_IN_PTERA_CHAMBER
	iftrue .OpenWall
	end

.OpenWall:
	sdefer RuinsOfAlphPteraChamberWallOpenScript
	end

RuinsOfAlphPteraChamberNoopScene:
	end

RuinsOfAlphPteraChamberHiddenDoorsCallback:
	checkevent EVENT_WALL_OPENED_IN_PTERA_CHAMBER
	iftrue .WallOpen
	changeblock 4, 0, $2e ; closed wall
.WallOpen:
	checkevent EVENT_SOLVED_PTERA_PUZZLE
	iffalse .FloorClosed
	endcallback

.FloorClosed:
	changeblock 2, 2, $01 ; left floor
	changeblock 4, 2, $02 ; right floor
	endcallback

RuinsOfAlphPteraChamberWallOpenScript:
	pause 30
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 20
	pause 30
	playsound SFX_STRENGTH
	changeblock 4, 0, $30 ; open wall
	refreshmap
	earthquake 50
	setscene SCENE_RUINSOFALPHPTERACHAMBER_NOOP
	closetext
	end

RuinsOfAlphPteraChamberPuzzle:
	reanchormap
	setval UNOWNPUZZLE_PTERA
	special UnownPuzzle
	closetext
	iftrue .PuzzleComplete
	end

.PuzzleComplete:
	setevent EVENT_RUINS_OF_ALPH_INNER_CHAMBER_TOURISTS
	setevent EVENT_SOLVED_PTERA_PUZZLE
	setflag ENGINE_UNLOCKED_UNOWNS_S_TO_W
	setmapscene RUINS_OF_ALPH_INNER_CHAMBER, SCENE_RUINSOFALPHINNERCHAMBER_STRANGE_PRESENCE
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 15
	changeblock 2, 2, $18 ; left hole
	changeblock 4, 2, $19 ; right hole
	refreshmap
	playsound SFX_STRENGTH
	earthquake 80
	applymovement PLAYER, RuinsOfAlphPteraChamberSkyfallTopMovement
	playsound SFX_KINESIS
	waitsfx
	pause 20
	warpcheck
	end

RuinsOfAlphPteraChamberAncientReplica:
	jumptext RuinsOfAlphPteraChamberAncientReplicaText

RuinsOfAlphPteraChamberDescriptionSign:
	jumptext RuinsOfAlphPteraChamberDescriptionText

RuinsOfAlphPteraChamberWallPatternLeft:
	opentext
	writetext RuinsOfAlphPteraChamberWallPatternLeftText
	setval UNOWNWORDS_LIGHT
	special DisplayUnownWords
	closetext
	end

RuinsOfAlphPteraChamberWallPatternRight:
	checkevent EVENT_WALL_OPENED_IN_PTERA_CHAMBER
	iftrue .WallOpen
	opentext
	writetext RuinsOfAlphPteraChamberWallPatternRightText
	setval UNOWNWORDS_LIGHT
	special DisplayUnownWords
	closetext
	end

.WallOpen:
	opentext
	writetext RuinsOfAlphPteraChamberWallHoleText
	waitbutton
	closetext
	end

RuinsOfAlphPteraChamberSkyfallTopMovement:
	skyfall_top
	step_end

RuinsOfAlphPteraChamberWallPatternLeftText:
	text "Des figures sont"
	line "apparues sur les"
	cont "murs..."
	done

RuinsOfAlphPteraChamberUnownText: ; unreferenced
	text "C'est du texte"
	line "ZARBI!"
	done

RuinsOfAlphPteraChamberWallPatternRightText:
	text "Des figures sont"
	line "apparues sur les"
	cont "murs..."
	done

RuinsOfAlphPteraChamberWallHoleText:
	text "Il y a un gros"
	line "trou dans le mur!"
	done

RuinsOfAlphPteraChamberAncientReplicaText:
	text "C'est la réplique"
	line "d'un ancien #-"
	cont "MON."
	done

RuinsOfAlphPteraChamberDescriptionText:
	text "Ce #MON volant"
	line "attaquait ses"

	para "proies de ses"
	line "crocs acérés."
	done

RuinsOfAlphPteraChamber_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_OUTSIDE, 4
	warp_event  4,  9, RUINS_OF_ALPH_OUTSIDE, 4
	warp_event  3,  3, RUINS_OF_ALPH_INNER_CHAMBER, 8
	warp_event  4,  3, RUINS_OF_ALPH_INNER_CHAMBER, 9
	warp_event  4,  0, RUINS_OF_ALPH_PTERA_ITEM_ROOM, 1

	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_READ, RuinsOfAlphPteraChamberAncientReplica
	bg_event  5,  3, BGEVENT_READ, RuinsOfAlphPteraChamberAncientReplica
	bg_event  3,  2, BGEVENT_UP, RuinsOfAlphPteraChamberPuzzle
	bg_event  4,  2, BGEVENT_UP, RuinsOfAlphPteraChamberDescriptionSign
	bg_event  3,  0, BGEVENT_UP, RuinsOfAlphPteraChamberWallPatternLeft
	bg_event  4,  0, BGEVENT_UP, RuinsOfAlphPteraChamberWallPatternRight

	def_object_events
