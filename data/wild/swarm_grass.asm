; Pokémon swarms in grass

SwarmGrassWildMons:

; Insolourdo swarm
	map_id DARK_CAVE_VIOLET_ENTRANCE
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 3, RACAILLOU
	db 3, INSOLOURDO
	db 2, NOSFERAPTI
	db 2, RACAILLOU
	db 2, INSOLOURDO
	db 4, INSOLOURDO
	db 4, INSOLOURDO
	; day
	db 3, RACAILLOU
	db 3, INSOLOURDO
	db 2, NOSFERAPTI
	db 2, RACAILLOU
	db 2, INSOLOURDO
	db 4, INSOLOURDO
	db 4, INSOLOURDO
	; nite
	db 3, RACAILLOU
	db 3, INSOLOURDO
	db 2, NOSFERAPTI
	db 2, RACAILLOU
	db 2, INSOLOURDO
	db 4, INSOLOURDO
	db 4, INSOLOURDO

; Yanma swarm
	map_id ROUTE_35
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 12, NIDORAN_M
	db 12, NIDORAN_F
	db 12, YANMA
	db 14, YANMA
	db 14, PIDGEY
	db 10, METAMORPH
	db 10, METAMORPH
	; day
	db 12, NIDORAN_M
	db 12, NIDORAN_F
	db 12, YANMA
	db 14, YANMA
	db 14, PIDGEY
	db 10, METAMORPH
	db 10, METAMORPH
	; nite
	db 12, NIDORAN_M
	db 12, NIDORAN_F
	db 12, YANMA
	db 14, YANMA
	db 14, HOOTHOOT
	db 10, METAMORPH
	db 10, METAMORPH

	db -1 ; end
