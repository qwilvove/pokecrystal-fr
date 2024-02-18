	object_const_def
	const LAKEOFRAGEMAGICARPEHOUSE_FISHING_GURU

LakeOfRageMagicarpeHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MagicarpeLengthRaterScript:
	faceplayer
	opentext
	checkevent EVENT_LAKE_OF_RAGE_ELIXIR_ON_STANDBY
	iftrue .GetReward
	checkevent EVENT_LAKE_OF_RAGE_ASKED_FOR_MAGICARPE
	iftrue .AskedForMagicarpe
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .ClearedRocketHideout
	checkevent EVENT_LAKE_OF_RAGE_EXPLAINED_WEIRD_MAGICARPE
	iftrue .ExplainedHistory
	writetext MagicarpeLengthRaterText_LakeOfRageHistory
	waitbutton
	closetext
	setevent EVENT_LAKE_OF_RAGE_EXPLAINED_WEIRD_MAGICARPE
	end

.ExplainedHistory:
	writetext MagicarpeLengthRaterText_MenInBlack
	waitbutton
	closetext
	end

.ClearedRocketHideout:
	writetext MagicarpeLengthRaterText_WorldsLargestMagicarpe
	waitbutton
	closetext
	setevent EVENT_LAKE_OF_RAGE_ASKED_FOR_MAGICARPE
	end

.AskedForMagicarpe:
	setval MAGICARPE
	special FindPartyMonThatSpecies
	iffalse .ClearedRocketHideout
	writetext MagicarpeLengthRaterText_YouHaveAMagicarpe
	waitbutton
	special CheckMagicarpeLength
	ifequal MAGICARPELENGTH_NOT_MAGICARPE, .NotMagicarpe
	ifequal MAGICARPELENGTH_REFUSED, .Refused
	ifequal MAGICARPELENGTH_TOO_SHORT, .TooShort
	; MAGICARPELENGTH_BEAT_RECORD
	sjump .GetReward

.GetReward:
	writetext MagicarpeLengthRaterText_Memento
	promptbutton
	verbosegiveitem ELIXER
	iffalse .NoRoom
	writetext MagicarpeLengthRaterText_Bonus
	waitbutton
	closetext
	clearevent EVENT_LAKE_OF_RAGE_ELIXIR_ON_STANDBY
	end

.NoRoom:
	closetext
	setevent EVENT_LAKE_OF_RAGE_ELIXIR_ON_STANDBY
	end

.TooShort:
	writetext MagicarpeLengthRaterText_TooShort
	waitbutton
	closetext
	end

.NotMagicarpe:
	writetext MagicarpeLengthRaterText_NotMagicarpe
	waitbutton
	closetext
	end

.Refused:
	writetext MagicarpeLengthRaterText_Refused
	waitbutton
	closetext
	end

LakeOfRageMagicarpeHouseUnusedRecordSign: ; unreferenced
	jumptext LakeOfRageMagicarpeHouseUnusedRecordText

MagicarpeHouseBookshelf:
	jumpstd DifficultBookshelfScript

MagicarpeLengthRaterText_LakeOfRageHistory:
	text "Le LAC COLERE est"
	line "en fait un cratère"

	para "créé par le"
	line "déchaînement des"
	cont "LEVIATOR."

	para "Le cratère s'est"
	line "peu à peu rempli"

	para "d'eau de pluie et"
	line "un LAC s'est"
	cont "formé."

	para "Cette histoire se"
	line "transmet de géné-"

	para "ration en géné-"
	line "ration. Elle vient"
	cont "d'un de mes"
	cont "grands-pères."

	para "On pouvait attra-"
	line "per de vrais"

	para "MAGICARPE en"
	line "pleine forme ici!"

	para "Je ne comprends"
	line "pas ce qu'il se"
	cont "passe."
	done

MagicarpeLengthRaterText_MenInBlack:
	text "Ce LAC n'est plus"
	line "normal depuis"

	para "l'arrivée des"
	line "hommes en noir."
	done

MagicarpeLengthRaterText_WorldsLargestMagicarpe:
	text "Le LAC COLERE est"
	line "redevenu normal."

	para "Les MAGICARPE sont"
	line "de retour."

	para "Mon rêve se"
	line "réalise enfin:"
	cont "voir un monde"
	cont "plein de"
	cont "MAGICARPE."

	para "As-tu une CANNE?"
	line "Aide-moi si tu en"
	cont "as une."
	done

MagicarpeLengthRaterText_YouHaveAMagicarpe:
	text "Ah, tu as un"
	line "MAGICARPE! Laisse-"

	para "moi voir sa"
	line "taille."
	done

MagicarpeLengthRaterText_Memento:
	text "Whaou! Celui-ci"
	line "est démesuré!"

	para "Je te tire mon"
	line "chapeau!"

	para "Accepte ceci en"
	line "récompense!"
	done

MagicarpeLengthRaterText_Bonus:
	text "Ce qui est impor-"
	line "tant, c'est d'épa-"

	para "ter les autres!"
	line "Suis mes conseils!"
	done

MagicarpeLengthRaterText_TooShort:
	text "Whaou! C'est pas"
	line "mal du tout!"

	para "...J'aimerais pou-"
	line "voir te dire ça"

	para "mais j'en ai déjà"
	line "vu des plus gros."
	done

MagicarpeLengthRaterText_NotMagicarpe:
	text "Quoi? Ce n'est pas"
	line "un MAGICARPE!"
	done

MagicarpeLengthRaterText_Refused:
	text "Alors... Tu n'as"
	line "rien pris qui"

	para "vaille la peine"
	line "d'être montré?"
	cont "Peut-être la"
	cont "prochaine fois!"
	done

LakeOfRageMagicarpeHouseUnusedRecordText:
	text "RECORD ACTUEL"

	para "@"
	text_ram wStringBuffer3
	text_start
	line "a été attrapé par"
	cont "@"
	text_ram wStringBuffer4
	text_end

LakeOfRageMagicarpeHouseUnusedDummyText: ; unreferenced
	text_end

LakeOfRageMagicarpeHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAKE_OF_RAGE, 2
	warp_event  3,  7, LAKE_OF_RAGE, 2

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, MagicarpeHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, MagicarpeHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MagicarpeLengthRaterScript, -1
