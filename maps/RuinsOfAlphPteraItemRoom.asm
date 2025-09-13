	object_const_def
	const RUINSOFALPHPTERAITEMROOM_POKE_BALL1
	const RUINSOFALPHPTERAITEMROOM_POKE_BALL2
	const RUINSOFALPHPTERAITEMROOM_POKE_BALL3
	const RUINSOFALPHPTERAITEMROOM_POKE_BALL4

RuinsOfAlphPteraItemRoom_MapScripts:
	def_scene_scripts

	def_callbacks

RuinsOfAlphPteraItemRoomGoldBerry:
	itemball GOLD_BERRY

RuinsOfAlphPteraItemRoomMoonStone:
	itemball MOON_STONE

RuinsOfAlphPteraItemRoomHealPowder:
	itemball HEAL_POWDER

RuinsOfAlphPteraItemRoomEnergyRoot:
	itemball ENERGY_ROOT

RuinsOfAlphPteraItemRoomAncientReplica:
	jumptext RuinsOfAlphPteraItemRoomAncientReplicaText

RuinsOfAlphPteraItemRoomAncientReplicaText:
	text "C'est la réplique"
	line "d'un ancien #-"
	cont "MON."
	done

RuinsOfAlphPteraItemRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_PTERA_CHAMBER, 5
	warp_event  4,  9, RUINS_OF_ALPH_PTERA_CHAMBER, 5
	warp_event  3,  1, RUINS_OF_ALPH_PTERA_WORD_ROOM, 1
	warp_event  4,  1, RUINS_OF_ALPH_PTERA_WORD_ROOM, 2

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, RuinsOfAlphPteraItemRoomAncientReplica
	bg_event  5,  1, BGEVENT_READ, RuinsOfAlphPteraItemRoomAncientReplica

	def_object_events
	object_event  2,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphPteraItemRoomGoldBerry, EVENT_PICKED_UP_GOLD_BERRY_FROM_PTERA_ITEM_ROOM
	object_event  5,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphPteraItemRoomMoonStone, EVENT_PICKED_UP_MOON_STONE_FROM_PTERA_ITEM_ROOM
	object_event  2,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphPteraItemRoomHealPowder, EVENT_PICKED_UP_HEAL_POWDER_FROM_PTERA_ITEM_ROOM
	object_event  5,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphPteraItemRoomEnergyRoot, EVENT_PICKED_UP_ENERGY_ROOT_FROM_PTERA_ITEM_ROOM
