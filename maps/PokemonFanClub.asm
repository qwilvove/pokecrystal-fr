	object_const_def
	const POKEMONFANCLUB_CHAIRMAN
	const POKEMONFANCLUB_RECEPTIONIST
	const POKEMONFANCLUB_MELOFEE_GUY
	const POKEMONFANCLUB_TEACHER
	const POKEMONFANCLUB_FAIRY
	const POKEMONFANCLUB_MYSTHERBE

PokemonFanClub_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonFanClubChairmanScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_FAN_CLUB_PRESIDENT
	iftrue .HeardSpeech
	checkevent EVENT_LISTENED_TO_FAN_CLUB_PRESIDENT_BUT_BAG_WAS_FULL
	iftrue .HeardSpeechButBagFull
	writetext PokemonFanClubChairmanDidYouVisitToHearAboutMyMonText
	yesorno
	iffalse .NotListening
	writetext PokemonFanClubChairmanGalopaText
	promptbutton
.HeardSpeechButBagFull:
	writetext PokemonFanClubChairmanIWantYouToHaveThisText
	promptbutton
	verbosegiveitem RARE_CANDY
	iffalse .BagFull
	setevent EVENT_LISTENED_TO_FAN_CLUB_PRESIDENT
	writetext PokemonFanClubChairmanItsARareCandyText
	waitbutton
	closetext
	end

.HeardSpeech:
	writetext PokemonFanClubChairmanMoreTalesToTellText
	waitbutton
	closetext
	end

.NotListening:
	writetext PokemonFanClubChairmanHowDisappointingText
	waitbutton
.BagFull:
	closetext
	end

PokemonFanClubReceptionistScript:
	jumptextfaceplayer PokemonFanClubReceptionistText

PokemonFanClubMelofeeGuyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_LOST_ITEM_FROM_FAN_CLUB
	iftrue .GotLostItem
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .FoundMelofeeDoll
	writetext PokemonFanClubMelofeeGuyMelofeeIsSoAdorableText
	waitbutton
	closetext
	end

.FoundMelofeeDoll:
	writetext PokemonFanClubMelofeeGuyMakingDoWithADollIFoundText
	checkevent EVENT_MET_COPYCAT_FOUND_OUT_ABOUT_LOST_ITEM
	iftrue .MetCopycat
	waitbutton
	closetext
	end

.MetCopycat:
	promptbutton
	writetext PokemonFanClubMelofeeGuyTakeThisDollBackToGirlText
	promptbutton
	waitsfx
	giveitem LOST_ITEM
	iffalse .NoRoom
	disappear POKEMONFANCLUB_FAIRY
	writetext PokemonFanClubPlayerReceivedDollText
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_LOST_ITEM_FROM_FAN_CLUB
	closetext
	end

.GotLostItem:
	writetext PokemonFanClubMelofeeGuyGoingToGetARealMelofeeText
	waitbutton
	closetext
	end

.NoRoom:
	writetext PokemonFanClubMelofeeGuyPackIsJammedFullText
	waitbutton
	closetext
	end

PokemonFanClubTeacherScript:
	jumptextfaceplayer PokemonFanClubTeacherText

PokemonFanClubMelofeeDollScript:
	jumptext PokemonFanClubMelofeeDollText

PokemonFanClubMacroniumScript:
	opentext
	writetext PokemonFanClubMacroniumText
	cry MACRONIUM
	waitbutton
	closetext
	end

PokemonFanClubListenSign:
	jumptext PokemonFanClubListenSignText

PokemonFanClubBraggingSign:
	jumptext PokemonFanClubBraggingSignText

PokemonFanClubChairmanDidYouVisitToHearAboutMyMonText:
	text "Je suis le PRESI-"
	line "DENT du FAN CLUB"
	cont "#MON."

	para "J'ai élevé plus de"
	line "150 #MON."

	para "Je suis très dif-"
	line "ficile quand il"
	cont "s'agit de"
	cont "#MON."

	para "Tu es ici pour"
	line "en apprendre plus"
	cont "sur mes #MON?"
	done

PokemonFanClubChairmanGalopaText:
	text "Bien!"
	line "Alors, écoute!"

	para "Mon préféré..."
	line "GALOPA..."

	para "Il est mignon..."
	line "beau...rapide..."
	cont "élégant...en feu."
	cont "Il fait pataclop,"
	cont "pataclop...quand"
	cont "il court...c'est"
	cont "super non?"
	cont "Je l'aime...!"

	para "Je lui fais...des"
	line "câlins...des..."
	cont "poutoux...des..."
	cont "gnangnans...des"
	cont "zigouzigoux..."
	cont "...Oups! Regarde"
	cont "l'heure! Je crois"
	cont "qu'il est temps"
	cont "d'y aller!"
	done

PokemonFanClubChairmanIWantYouToHaveThisText:
	text "Merci de m'avoir"
	line "écouté..."
	cont "Voilà pour toi!"
	done

PokemonFanClubChairmanItsARareCandyText:
	text "C'est un SUPER"
	line "BONBON qui rend"
	cont "les #MON plus"
	cont "forts."

	para "Moi je préfère les"
	line "renforcer en fai-"

	para "sant des combats."
	line "Il est pour toi."
	done

PokemonFanClubChairmanMoreTalesToTellText:
	text "Salut, <PLAY_G>!"

	para "Tu es ici pour en"
	line "apprendre encore"
	cont "sur mes #MON?"

	para "Non? Oh..."
	line "J'avais de belles"
	cont "histoires..."
	done

PokemonFanClubChairmanHowDisappointingText:
	text "Dommage..."

	para "Reviens me voir"
	line "vite."
	done

PokemonFanClubReceptionistText:
	text "Notre PRESIDENT"
	line "parle un peu trop"
	cont "de ses #MON..."
	done

PokemonFanClubMelofeeGuyMelofeeIsSoAdorableText:
	text "J'aime quand"
	line "MELOFEE gigote son"

	para "doigt quand il"
	line "utilise son"

	para "METRONOME."
	line "C'est adorable!"
	done

PokemonFanClubMelofeeGuyMakingDoWithADollIFoundText:
	text "J'aime MELOFEE,"
	line "mais je ne pourrai"

	para "jamais en attraper"
	line "un... Alors je"

	para "m'amuse avec cette"
	line "# POUPEE."
	done

PokemonFanClubMelofeeGuyTakeThisDollBackToGirlText:
	text "Oh, je vois. La"
	line "fille qui a perdu"

	para "sa # POUPEE"
	line "est triste..."

	para "OK. Peux-tu porter"
	line "cette # POUPEE"

	para "à la pauvre petite"
	line "fille triste?"

	para "Je trouverai un"
	line "vrai MELOFEE..."
	done

PokemonFanClubPlayerReceivedDollText:
	text "<PLAYER> reçoit"
	line "la # POUPEE."
	done

PokemonFanClubMelofeeGuyGoingToGetARealMelofeeText:
	text "J'attraperai un"
	line "MELOFEE et il sera"

	para "mon ami pour la"
	line "vie."
	done

PokemonFanClubMelofeeGuyPackIsJammedFullText:
	text "Ton SAC est plein."
	done

PokemonFanClubTeacherText:
	text "Regarde donc mon"
	line "MACRONIUM!"

	para "La feuille sur sa"
	line "tête est mignonne!"
	done

PokemonFanClubMelofeeDollText:
	text "C'est un MELOFEE!"
	line "Hein?"

	para "Ah, d'accord."
	line "C'est une #"
	cont "POUPEE d'un"
	cont "MELOFEE."
	done

PokemonFanClubMacroniumText:
	text "MACRONIUM: Niuuu!"
	done

PokemonFanClubListenSignText:
	text "Ecoutons tous"
	line "les autres"
	cont "dresseurs."
	done

PokemonFanClubBraggingSignText:
	text "Si quelqu'un se"
	line "vante, vante-toi"
	cont "à ton tour!"
	done

PokemonFanClub_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 3
	warp_event  3,  7, VERMILION_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  7,  0, BGEVENT_READ, PokemonFanClubListenSign
	bg_event  9,  0, BGEVENT_READ, PokemonFanClubBraggingSign

	def_object_events
	object_event  3,  1, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClubChairmanScript, -1
	object_event  4,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PokemonFanClubReceptionistScript, -1
	object_event  2,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClubMelofeeGuyScript, -1
	object_event  7,  2, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClubTeacherScript, -1
	object_event  2,  4, SPRITE_FAIRY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClubMelofeeDollScript, EVENT_VERMILION_FAN_CLUB_DOLL
	object_event  7,  3, SPRITE_MYSTHERBE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PokemonFanClubMacroniumScript, -1
