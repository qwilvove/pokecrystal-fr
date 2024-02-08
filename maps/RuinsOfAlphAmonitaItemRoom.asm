	object_const_def
	const RUINSOFALPHAMONITAITEMROOM_POKE_BALL1
	const RUINSOFALPHAMONITAITEMROOM_POKE_BALL2
	const RUINSOFALPHAMONITAITEMROOM_POKE_BALL3
	const RUINSOFALPHAMONITAITEMROOM_POKE_BALL4

RuinsOfAlphAmonitaItemRoom_MapScripts:
	def_scene_scripts

	def_callbacks

RuinsOfAlphAmonitaItemRoomMysteryberry:
	itemball MYSTERYBERRY

RuinsOfAlphAmonitaItemRoomMysticWater:
	itemball MYSTIC_WATER

RuinsOfAlphAmonitaItemRoomStardust:
	itemball STARDUST

RuinsOfAlphAmonitaItemRoomStarPiece:
	itemball STAR_PIECE

RuinsOfAlphAmonitaItemRoomAncientReplica:
	jumptext RuinsOfAlphAmonitaItemRoomAncientReplicaText

RuinsOfAlphAmonitaItemRoomAncientReplicaText:
	text "C'est la réplique"
	line "d'un ancien #-"
	cont "MON."
	done

RuinsOfAlphAmonitaItemRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_AMONITA_CHAMBER, 5
	warp_event  4,  9, RUINS_OF_ALPH_AMONITA_CHAMBER, 5
	warp_event  3,  1, RUINS_OF_ALPH_AMONITA_WORD_ROOM, 1
	warp_event  4,  1, RUINS_OF_ALPH_AMONITA_WORD_ROOM, 2

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, RuinsOfAlphAmonitaItemRoomAncientReplica
	bg_event  5,  1, BGEVENT_READ, RuinsOfAlphAmonitaItemRoomAncientReplica

	def_object_events
	object_event  2,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphAmonitaItemRoomMysteryberry, EVENT_PICKED_UP_MYSTERYBERRY_FROM_AMONITA_ITEM_ROOM
	object_event  5,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphAmonitaItemRoomMysticWater, EVENT_PICKED_UP_MYSTIC_WATER_FROM_AMONITA_ITEM_ROOM
	object_event  2,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphAmonitaItemRoomStardust, EVENT_PICKED_UP_STARDUST_FROM_AMONITA_ITEM_ROOM
	object_event  5,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphAmonitaItemRoomStarPiece, EVENT_PICKED_UP_STAR_PIECE_FROM_AMONITA_ITEM_ROOM
