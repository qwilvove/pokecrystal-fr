DEF ugdoor_n = 0

MACRO ugdoor_def
;\1: x coord
;\2: y coord
;\3: closed block id
;\4: open block id
;...
	DEF ugdoor_n += 1
	DEF UGDOOR_{d:ugdoor_n}_SIZE EQU _NARG / 4
	for i, UGDOOR_{d:ugdoor_n}_SIZE
		DEF UGDOOR_{d:ugdoor_n}_X_{d:i}      EQU \1
		DEF UGDOOR_{d:ugdoor_n}_Y_{d:i}      EQU \2
		DEF UGDOOR_{d:ugdoor_n}_CLOSED_{d:i} EQU \3
		DEF UGDOOR_{d:ugdoor_n}_OPEN_{d:i}   EQU \4
		shift 4
	endr
ENDM

	;           x,  y, closed, open,  x,  y, closed, open ; id
	ugdoor_def 16,  6,    $3e,  $2d                       ;  1
	ugdoor_def 10,  6,    $3e,  $2d                       ;  2
	ugdoor_def  2,  6,    $3e,  $2d                       ;  3
	ugdoor_def  2, 10,    $3e,  $2d                       ;  4
	ugdoor_def 10, 10,    $3e,  $2d                       ;  5
	ugdoor_def 16, 10,    $3e,  $2d                       ;  6
	ugdoor_def 12,  6,    $3f,  $2a, 12,  8,    $3d,  $2d ;  7
	ugdoor_def  6,  6,    $3f,  $2a,  6,  8,    $3d,  $2d ;  8
	ugdoor_def 12, 10,    $3f,  $2a, 12, 12,    $3d,  $2d ;  9
	ugdoor_def  6, 10,    $3f,  $2a,  6, 12,    $3d,  $2d ; 10
	ugdoor_def 18, 10,    $3f,  $2a, 18, 12,    $3d,  $2d ; 11

MACRO changeugdoor
;\1: ugdoor id
;\2: state (CLOSED or OPEN)
	DEF n = \1
	for i, UGDOOR_{d:n}_SIZE
		changeblock UGDOOR_{d:n}_X_{d:i}, UGDOOR_{d:n}_Y_{d:i}, UGDOOR_{d:n}_\2_{d:i}
	endr
ENDM

	object_const_def
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_PHARMACIST1
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_PHARMACIST2
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_ROCKET1
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_ROCKET2
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_ROCKET3
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_ROCKET_GIRL
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_TEACHER
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_SUPER_NERD
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_POKE_BALL1
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_POKE_BALL2
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_RIVAL

GoldenrodUndergroundSwitchRoomEntrances_MapScripts:
	def_scene_scripts
	scene_script GoldenrodUndergroundSwitchRoomEntrancesNoop1Scene, SCENE_GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_RIVAL_BATTLE
	scene_script GoldenrodUndergroundSwitchRoomEntrancesNoop2Scene, SCENE_GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_NOOP

	def_callbacks
	callback MAPCALLBACK_TILES, GoldenrodUndergroundSwitchRoomEntrancesUpdateDoorPositionsCallback

GoldenrodUndergroundSwitchRoomEntrancesNoop1Scene:
	end

GoldenrodUndergroundSwitchRoomEntrancesNoop2Scene:
	end

GoldenrodUndergroundSwitchRoomEntrancesUpdateDoorPositionsCallback:
for n, 1, ugdoor_n + 1
	checkevent EVENT_DOOR_{d:n}_OPEN
	iffalse .door_{d:n}_closed
	changeugdoor n, OPEN
.door_{d:n}_closed
endr
	endcallback

GoldenrodUndergroundSwitchRoomEntrancesSuperNerdScript:
	jumptextfaceplayer GoldenrodUndergroundSwitchRoomEntrances_SuperNerdText

GoldenrodUndergroundSwitchRoomEntrancesTeacherScript:
	jumptextfaceplayer GoldenrodUndergroundSwitchRoomEntrances_TeacherText

UndergroundRivalScene1:
	turnobject PLAYER, RIGHT
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	playsound SFX_EXIT_BUILDING
	appear GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_RIVAL
	waitsfx
	applymovement GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_RIVAL, UndergroundRivalApproachMovement1
	turnobject PLAYER, RIGHT
	scall UndergroundRivalBattleScript
	applymovement GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_RIVAL, UndergroundRivalRetreatMovement1
	playsound SFX_EXIT_BUILDING
	disappear GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_RIVAL
	setscene SCENE_GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_NOOP
	waitsfx
	playmapmusic
	end

UndergroundRivalScene2:
	turnobject PLAYER, RIGHT
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	playsound SFX_EXIT_BUILDING
	appear GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_RIVAL
	waitsfx
	applymovement GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_RIVAL, UndergroundRivalApproachMovement2
	turnobject PLAYER, RIGHT
	scall UndergroundRivalBattleScript
	applymovement GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_RIVAL, UndergroundRivalRetreatMovement2
	playsound SFX_EXIT_BUILDING
	disappear GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_RIVAL
	setscene SCENE_GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_NOOP
	waitsfx
	playmapmusic
	end

UndergroundRivalBattleScript:
	checkevent EVENT_RIVAL_BURNED_TOWER
	iftrue .Continue
	setevent EVENT_RIVAL_BURNED_TOWER
	setmapscene BURNED_TOWER_1F, SCENE_BURNEDTOWER1F_RIVAL_BATTLE
.Continue:
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext UndergroundRivalBeforeText
	waitbutton
	closetext
	setevent EVENT_RIVAL_GOLDENROD_UNDERGROUND
	checkevent EVENT_GOT_KAIMINUS_FROM_ELM
	iftrue .Kaiminus
	checkevent EVENT_GOT_GERMIGNON_FROM_ELM
	iftrue .Germignon
	winlosstext UndergroundRivalWinText, UndergroundRivalLossText
	setlasttalked GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_RIVAL
	loadtrainer RIVAL1, RIVAL1_4_KAIMINUS
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .FinishRivalBattle

.Kaiminus:
	winlosstext UndergroundRivalWinText, UndergroundRivalLossText
	setlasttalked GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_RIVAL
	loadtrainer RIVAL1, RIVAL1_4_GERMIGNON
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .FinishRivalBattle

.Germignon:
	winlosstext UndergroundRivalWinText, UndergroundRivalLossText
	setlasttalked GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_RIVAL
	loadtrainer RIVAL1, RIVAL1_4_HERICENDRE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .FinishRivalBattle

.FinishRivalBattle:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext UndergroundRivalAfterText
	waitbutton
	closetext
	end

TrainerGruntM11:
	trainer GRUNTM, GRUNTM_11, EVENT_BEAT_ROCKET_GRUNTM_11, GruntM11SeenText, GruntM11BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM11AfterBattleText
	waitbutton
	closetext
	end

TrainerGruntM25:
	trainer GRUNTM, GRUNTM_25, EVENT_BEAT_ROCKET_GRUNTM_25, GruntM25SeenText, GruntM25BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM25AfterBattleText
	waitbutton
	closetext
	end

TrainerBurglarDuncan:
	trainer BURGLAR, DUNCAN, EVENT_BEAT_BURGLAR_DUNCAN, BurglarDuncanSeenText, BurglarDuncanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BurglarDuncanAfterBattleText
	waitbutton
	closetext
	end

TrainerBurglarEddie:
	trainer BURGLAR, EDDIE, EVENT_BEAT_BURGLAR_EDDIE, BurglarEddieSeenText, BurglarEddieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BurglarEddieAfterBattleText
	waitbutton
	closetext
	end

TrainerGruntM13:
	trainer GRUNTM, GRUNTM_13, EVENT_BEAT_ROCKET_GRUNTM_13, GruntM13SeenText, GruntM13BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM13AfterBattleText
	waitbutton
	closetext
	end

TrainerGruntF3:
	trainer GRUNTF, GRUNTF_3, EVENT_BEAT_ROCKET_GRUNTF_3, GruntF3SeenText, GruntF3BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntF3AfterBattleText
	waitbutton
	closetext
	end

Switch1Script:
	opentext
	writetext SwitchRoomText_Switch1
	promptbutton
	checkevent EVENT_SWITCH_1
	iftrue .On
	writetext SwitchRoomText_OffTurnOn
	yesorno
	iffalse GoldenrodUndergroundSwitchRoomEntrances_DontToggle
	readmem wUndergroundSwitchPositions
	addval 1
	writemem wUndergroundSwitchPositions
	setevent EVENT_SWITCH_1
	sjump GoldenrodUndergroundSwitchRoomEntrances_UpdateDoors

.On:
	writetext SwitchRoomText_OnTurnOff
	yesorno
	iffalse GoldenrodUndergroundSwitchRoomEntrances_DontToggle
	readmem wUndergroundSwitchPositions
	addval -1
	writemem wUndergroundSwitchPositions
	clearevent EVENT_SWITCH_1
	sjump GoldenrodUndergroundSwitchRoomEntrances_UpdateDoors

Switch2Script:
	opentext
	writetext SwitchRoomText_Switch2
	promptbutton
	checkevent EVENT_SWITCH_2
	iftrue .On
	writetext SwitchRoomText_OffTurnOn
	yesorno
	iffalse GoldenrodUndergroundSwitchRoomEntrances_DontToggle
	readmem wUndergroundSwitchPositions
	addval 2
	writemem wUndergroundSwitchPositions
	setevent EVENT_SWITCH_2
	sjump GoldenrodUndergroundSwitchRoomEntrances_UpdateDoors

.On:
	writetext SwitchRoomText_OnTurnOff
	yesorno
	iffalse GoldenrodUndergroundSwitchRoomEntrances_DontToggle
	readmem wUndergroundSwitchPositions
	addval -2
	writemem wUndergroundSwitchPositions
	clearevent EVENT_SWITCH_2
	sjump GoldenrodUndergroundSwitchRoomEntrances_UpdateDoors

Switch3Script:
	opentext
	writetext SwitchRoomText_Switch3
	promptbutton
	checkevent EVENT_SWITCH_3
	iftrue .On
	writetext SwitchRoomText_OffTurnOn
	yesorno
	iffalse GoldenrodUndergroundSwitchRoomEntrances_DontToggle
	readmem wUndergroundSwitchPositions
	addval 3
	writemem wUndergroundSwitchPositions
	setevent EVENT_SWITCH_3
	sjump GoldenrodUndergroundSwitchRoomEntrances_UpdateDoors

.On:
	writetext SwitchRoomText_OnTurnOff
	yesorno
	iffalse GoldenrodUndergroundSwitchRoomEntrances_DontToggle
	readmem wUndergroundSwitchPositions
	addval -3
	writemem wUndergroundSwitchPositions
	clearevent EVENT_SWITCH_3
	sjump GoldenrodUndergroundSwitchRoomEntrances_UpdateDoors

EmergencySwitchScript:
	opentext
	writetext SwitchRoomText_Emergency
	promptbutton
	checkevent EVENT_EMERGENCY_SWITCH
	iftrue .On
	writetext SwitchRoomText_OffTurnOn
	yesorno
	iffalse GoldenrodUndergroundSwitchRoomEntrances_DontToggle
	setval 7
	writemem wUndergroundSwitchPositions
	setevent EVENT_EMERGENCY_SWITCH
	setevent EVENT_SWITCH_1
	setevent EVENT_SWITCH_2
	setevent EVENT_SWITCH_3
	sjump GoldenrodUndergroundSwitchRoomEntrances_UpdateDoors

.On:
	writetext SwitchRoomText_OnTurnOff
	yesorno
	iffalse GoldenrodUndergroundSwitchRoomEntrances_DontToggle
	setval 0
	writemem wUndergroundSwitchPositions
	clearevent EVENT_EMERGENCY_SWITCH
	clearevent EVENT_SWITCH_1
	clearevent EVENT_SWITCH_2
	clearevent EVENT_SWITCH_3
	sjump GoldenrodUndergroundSwitchRoomEntrances_UpdateDoors

GoldenrodUndergroundSwitchRoomEntrances_DontToggle:
	closetext
	end

GoldenrodUndergroundSwitchRoomEntrances_UpdateDoors:
	readmem wUndergroundSwitchPositions
	ifequal 0, .Position0
	ifequal 1, .Position1
	ifequal 2, .Position2
	ifequal 3, .Position3
	ifequal 4, .Position4
	ifequal 5, .Position5
	ifequal 6, .Position6
	ifequal 7, .EmergencyPosition
.Position0:
	playsound SFX_ENTER_DOOR
	scall .CloseDoor1
	scall .CloseDoor2
	scall .CloseDoor3
	scall .CloseDoor4
	scall .CloseDoor5
	scall .CloseDoor6
	scall .CloseDoor7
	scall .CloseDoor8
	scall .CloseDoor9
	scall .CloseDoor10
	scall .CloseDoor11
	refreshmap
	closetext
	end

.Position1:
	playsound SFX_ENTER_DOOR
	scall .OpenDoor1
	scall .OpenDoor7
	scall .OpenDoor10
	scall .CloseDoor6
	scall .CloseDoor8
	scall .CloseDoor9
	scall .CloseDoor11
	refreshmap
	closetext
	end

.Position2:
	playsound SFX_ENTER_DOOR
	scall .OpenDoor2
	scall .OpenDoor8
	scall .OpenDoor9
	scall .CloseDoor5
	scall .CloseDoor7
	scall .CloseDoor10
	scall .CloseDoor11
	refreshmap
	closetext
	end

.Position3:
	playsound SFX_ENTER_DOOR
	scall .OpenDoor3
	scall .OpenDoor7
	scall .OpenDoor10
	scall .CloseDoor4
	scall .CloseDoor8
	scall .CloseDoor9
	scall .CloseDoor11
	refreshmap
	closetext
	end

.Position4:
	playsound SFX_ENTER_DOOR
	scall .OpenDoor4
	scall .OpenDoor8
	scall .OpenDoor9
	scall .CloseDoor3
	scall .CloseDoor7
	scall .CloseDoor10
	scall .CloseDoor11
	refreshmap
	closetext
	end

.Position5:
	playsound SFX_ENTER_DOOR
	scall .OpenDoor5
	scall .OpenDoor7
	scall .OpenDoor10
	scall .CloseDoor2
	scall .CloseDoor8
	scall .CloseDoor9
	scall .CloseDoor11
	refreshmap
	closetext
	end

.Position6:
	playsound SFX_ENTER_DOOR
	scall .OpenDoor6
	scall .OpenDoor8
	scall .OpenDoor9
	scall .OpenDoor11
	scall .CloseDoor1
	scall .CloseDoor7
	scall .CloseDoor10
	refreshmap
	closetext
	end

.EmergencyPosition:
	playsound SFX_ENTER_DOOR
	scall .CloseDoor1
	scall .CloseDoor2
	scall .OpenDoor3
	scall .CloseDoor4
	scall .OpenDoor5
	scall .OpenDoor6
	scall .CloseDoor7
	scall .OpenDoor8
	scall .OpenDoor9
	scall .CloseDoor10
	scall .OpenDoor11
	refreshmap
	closetext
	setval 6
	writemem wUndergroundSwitchPositions
	end

for n, 1, ugdoor_n + 1
.OpenDoor{d:n}:
	changeugdoor n, OPEN
	setevent EVENT_DOOR_{d:n}_OPEN
	end
endr

for n, 1, ugdoor_n + 1
.CloseDoor{d:n}:
	changeugdoor n, CLOSED
	clearevent EVENT_DOOR_{d:n}_OPEN
	end
endr

GoldenrodUndergroundSwitchRoomEntrancesSmokeBall:
	itemball SMOKE_BALL

GoldenrodUndergroundSwitchRoomEntrancesFullHeal:
	itemball FULL_HEAL

GoldenrodUndergroundSwitchRoomEntrancesHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES_HIDDEN_MAX_POTION

GoldenrodUndergroundSwitchRoomEntrancesHiddenRevive:
	hiddenitem REVIVE, EVENT_GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES_HIDDEN_REVIVE

UndergroundRivalApproachMovement1:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step_end

UndergroundRivalApproachMovement2:
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step_end

UndergroundRivalRetreatMovement1:
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step_end

UndergroundRivalRetreatMovement2:
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step_end

UndergroundRivalBeforeText:
	text "Minute!"

	para "Hé hé! J'étais"
	line "derrière toi..."

	para "J'ai pas besoin de"
	line "toi pour casser la"

	para "tête à la TEAM"
	line "ROCKET."

	para "...Attends voir..."
	line "Tu m'as battu"
	cont "avant, non?"

	para "C'était de la"
	line "chance."

	para "Mais cette fois..."
	line "Ca va saigner!"
	done

UndergroundRivalWinText:
	text "...Pourquoi..."
	line "Moi perdre?"

	para "Mes #MON sont"
	line "super balèzes!"

	para "Je les ai entraî-"
	line "nés à fond!"

	para "Alors pourquoi???"
	done

UndergroundRivalAfterText:
	text "C'est..."
	line "Incroyable..."

	para "Ce qu'a dit PETER"
	line "est donc vrai?"

	para "Je m'occupe mal de"
	line "mes #MON?"

	para "Amour..."

	para "Confiance..."

	para "Est-ce aussi im-"
	line "portant?"

	para "Est-ce la raison"
	line "de ma défaite?"

	para "Je ne comprends"
	line "plus rien..."

	para "Mais ce n'est pas"
	line "la fin."

	para "Pas maintenant..."
	line "Pas comme ça."

	para "Je serai le plus"
	line "grand dresseur de"

	para "#MON de tous"
	line "les temps!"
	done

UndergroundRivalLossText:
	text "Tsss! Voilà ce que"
	line "c'est la force."

	para "J'vais la bouffer"
	line "la TEAM ROCKET."

	para "Et PETER..."
	line "J'vais lui casser"
	cont "ses rêves."
	done

GoldenrodUndergroundSwitchRoomEntrances_SuperNerdText:
	text "J'ai fait un"
	line "combat en bas."

	para "C'était super"
	line "chaud. Un conseil:"
	cont "fais super gaffe!"
	done

GoldenrodUndergroundSwitchRoomEntrances_TeacherText:
	text "Il y a des bouti-"
	line "ques en bas..."

	para "Mais il y a aussi"
	line "des dresseurs..."

	para "Alors j'ai peur"
	line "d'y aller."
	done

GruntM11SeenText:
	text "Ouvre un truc et"
	line "un autre se ferme."

	para "C'est dur d'avan-"
	line "cer, hein?"
	done

GruntM11BeatenText:
	text "Zut de flûte!"
	line "J'suis perdu!"
	done

GruntM11AfterBattleText:
	text "Moi aussi je m'y"
	line "perds: le premier"

	para "interrupteur à"
	line "activer est au"
	cont "bout et après..."
	done

GruntM25SeenText:
	text "Kwahaha!"

	para "Les volets te po-"
	line "sent un problème?"

	para "Bats-moi et je te"
	line "confie un p'tit"
	cont "secret!"
	done

GruntM25BeatenText:
	text "Hmmm..."
	line "Dommage."
	done

GruntM25AfterBattleText:
	text "OK. Un conseil!"

	para "Change l'ordre"
	line "d'activation."

	para "Et l'ordre de fer-"
	line "meture des volets"
	cont "changera."
	done

BurglarDuncanSeenText:
	text "Envoie ton blé!"
	done

BurglarDuncanBeatenText:
	text "Pitié!"
	done

BurglarDuncanAfterBattleText:
	text "Voler c'est cool!"
	line "Piller c'est top!"
	done

BurglarEddieSeenText:
	text "Ils ont abandonné"
	line "ce projet avant la"
	cont "fin."

	para "Je cherche des"
	line "restes à voler."
	done

BurglarEddieBeatenText:
	text "Yarglah!"
	done

BurglarEddieAfterBattleText:
	text "Le DEPOT"
	line "SOUTERRAIN?"

	para "Pourquoi tu veux"
	line "y aller?"

	para "Y'a rien du tout"
	line "dans le coin."
	done

GruntM13SeenText:
	text "Je m'en fiche si"
	line "tu ne sais pas par"
	cont "où aller."

	para "Si tu viens ici,"
	line "tu dois t'attendre"
	cont "aux conséquences!"
	done

GruntM13BeatenText:
	text "Gueuh! Tu te crois"
	line "balèze ou quoi?"
	done

GruntM13AfterBattleText:
	text "T'as un sacré cou-"
	line "rage pour t'atta-"
	cont "quer à la ROCKET."
	done

SwitchRoomText_Switch1:
	text "C'est écrit:"
	line "INTERRUPTEUR 1."
	done

GruntF3SeenText:
	text "T'as pas l'air"
	line "d'avoir peur."

	para "Attends..."
	line "Moi je vais te"
	cont "faire peur!"
	done

GruntF3BeatenText:
	text "Comment oses-tu?"
	done

GruntF3AfterBattleText:
	text "Va où tu veux!"
	line "Va-t'en!"
	cont "Je m'en fiche!"
	done

SwitchRoomText_OffTurnOn:
	text "C'est éteint."
	line "On l'active?"
	done

SwitchRoomText_OnTurnOff:
	text "C'est activé."
	line "On l'éteint?"
	done

SwitchRoomText_Switch2:
	text "C'est écrit:"
	line "INTERRUPTEUR 2."
	done

SwitchRoomText_Switch3:
	text "C'est écrit:"
	line "INTERRUPTEUR 3."
	done

SwitchRoomText_Emergency:
	text "C'est écrit:"
	line "URGENCE."
	done

GoldenrodUndergroundSwitchRoomEntrances_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23,  3, GOLDENROD_UNDERGROUND, 6
	warp_event 22, 10, GOLDENROD_UNDERGROUND_WAREHOUSE, 1
	warp_event 23, 10, GOLDENROD_UNDERGROUND_WAREHOUSE, 2
	warp_event  5, 25, GOLDENROD_UNDERGROUND, 2
	warp_event  4, 29, GOLDENROD_CITY, 14
	warp_event  5, 29, GOLDENROD_CITY, 14
	warp_event 21, 25, GOLDENROD_UNDERGROUND, 1
	warp_event 20, 29, GOLDENROD_CITY, 13
	warp_event 21, 29, GOLDENROD_CITY, 13

	def_coord_events
	coord_event 19,  4, SCENE_GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_RIVAL_BATTLE, UndergroundRivalScene1
	coord_event 19,  5, SCENE_GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_RIVAL_BATTLE, UndergroundRivalScene2

	def_bg_events
	bg_event 16,  1, BGEVENT_READ, Switch1Script
	bg_event 10,  1, BGEVENT_READ, Switch2Script
	bg_event  2,  1, BGEVENT_READ, Switch3Script
	bg_event 20, 11, BGEVENT_READ, EmergencySwitchScript
	bg_event  8,  9, BGEVENT_ITEM, GoldenrodUndergroundSwitchRoomEntrancesHiddenMaxPotion
	bg_event  1,  8, BGEVENT_ITEM, GoldenrodUndergroundSwitchRoomEntrancesHiddenRevive

	def_object_events
	object_event  9, 12, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerBurglarDuncan, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  4,  8, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerBurglarEddie, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 17,  2, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM13, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 11,  2, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM11, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  3,  2, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM25, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 19, 12, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerGruntF3, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  3, 27, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodUndergroundSwitchRoomEntrancesTeacherScript, -1
	object_event 19, 27, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodUndergroundSwitchRoomEntrancesSuperNerdScript, -1
	object_event  1, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GoldenrodUndergroundSwitchRoomEntrancesSmokeBall, EVENT_GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES_SMOKE_BALL
	object_event 14,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GoldenrodUndergroundSwitchRoomEntrancesFullHeal, EVENT_GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES_FULL_HEAL
	object_event 23,  3, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_GOLDENROD_UNDERGROUND
