; Every Pokémon sorted by their Japanese names in gojūon order.
; Notably, Rhydon is missing (it should be before Rhyhorn).

EZChat_SortedPokemon:
	dw .a
	dw .i
	dw .u
	dw .e
	dw .o
	dw .ka_ga
	dw .ki_gi
	dw .ku_gu
	dw .ke_ge
	dw .ko_go
	dw .sa_za
	dw .shi_ji
	dw .su_zu
	dw .se_ze
	dw .so_zo
	dw .ta_da
	dw .chi_dhi
	dw .tsu_du
	dw .te_de
	dw .to_do
	dw .na
	dw .ni
	dw .nu
	dw .ne
	dw .no
	dw .ha_ba_pa
	dw .hi_bi_pi
	dw .fu_bu_pu
	dw .he_be_pe
	dw .ho_bo_po
	dw .ma
	dw .mi
	dw .mu
	dw .me
	dw .mo
	dw .ya
	dw .yu
	dw .yo
	dw .ra
	dw .ri
	dw .ru
	dw .re
	dw .ro
	dw .wa
	dw .end

.a:        db ABO, ARBOK, SEAKING, ARIADOS, CROCRODIL, UNOWN, -1
.i:        db EVOLI, GEODUDE, SPINARAK, COCHIGNON, ONIX, -1
.u:        db ARCANIN, SUDOWOODO, BOUSTIFLOR, EMPIFLOR, AXOLOTO, SWINUB, -1
.e:        db AIRMURE, CAPUMAIN, ESPEON, HITMONCHAN, ELEKID, ELEKTEK, ENTEI, -1
.o:        db ALIGATUEUR, FOUINAR, OCTILLERY, COLOSSINGE, FOUINETTE, CERFROUSSE, SPEAROW, FEAROW, AMONISTAR, AMONITA, -1
.ka_ga:    db CANINOS, MACHAMP, DRACOLOSSE, PINSIR, SNORLAX, KABUTO, KABUTOPS, HITMONTOP, CARABAFFE, BLASTOISE, CANARTICHO, CUBONE, MAROWAK, KANGASKHAN, -1
.ki_gi:    db HELIATRONC, CHENIPAN, GYARADOS, GALOPA, FEUNARD, GIRAFARIG, BELLOSSOM, HYPOROI, KINGLER, -1
.ku_gu:    db GLOOM, PINECO, GLIGAR, KRABBY, GRANBULL, CROBAT, -1
.ke_ge:    db ABRA, ECTOPLASMA, TAUROS, -1
.ko_go:    db MAGIKARP, MAGNEMITE, FANTOMINUS, HAUNTER, MACHOKE, COCONFORT, PSYDUCK, PHANPY, RATTATA, AKWAKWAK, GOLBAT, GROLEM, GRAVALANCH, VENONAT, -1
.sa_za:    db RHYHORN, PUPITAR, CORAYON, HITMONLEE, ELECTHOR, JOLTEON, SANDSHREW, SANDSLASH, -1 ; RHYDON should lead this list
.shi_ji:   db HYPOCEAN, SHELLDER, AQUALI, DEWGONG, -1
.su_zu:    db SUICUNE, STARMIE, INSECATEUR, ZUBAT, DARDARGNAN, HYPNOMADE, DROWZEE, -1
.se_ze:    db CARAPUCE, CELEBI, -1
.so_zo:    db WOBBUFFET, -1
.ta_da:    db DUGTRIO, HYPOTREMPE, EXEGGCUTE, -1
.chi_dhi:  db GERMIGNON, CHINCHOU, -1
.tsu_du:   db CARATROC, -1
.te_de:    db DIGLETT, REMORAID, CADOIZO, HOUNDOUR, AMPHAROS, -1
.to_do:    db DODUO, DODRIO, SMEARGLE, KOFFING, TENTACRUEL, TOGETIC, TOGEPI, GOLDEEN, CHRYSACIER, DONPHAN, -1
.na:       db ODDISH, EXEGGUTOR, -1
.ni:       db NIDOKING, NIDOQUEEN, NIDORAN_M, NIDORAN_F, NIDORINA, NIDORINO, MEOWTH, FARFURET, POLIWHIRL, POLITOED, POLIWRATH, POLIWAG, -1
.nu:       db QUAGSIRE, -1
.ne:       db NATU, XATU, -1
.no:       db DUNSPARCE, -1
.ha_ba_pa: db SEEL, STEELIX, TYPHLOSION, DRACO, BUTTERFREE, CIZAYOX, GRANIVOL, BLISSEY, PARAS, PARASECT, QWILFISH, MR__MIME, DEBUGANT, CRUSTABRI, TYRANITAR, -1
.hi_bi_pi: db CLEFFA, ASPICOT, PIKACHU, CLEFABLE, PIDGEOT, PIDGEOTTO, PICHU, CLEFAIRY, CHARMANDER, STARYU, HERICENDRE, SUNKERN, TEDDIURSA, VOLTORB, -1
.fu_bu_pu: db MOLTRES, FLAREON, ALAKAZAM, MAGMAR, FORETRESS, GRODOUDOU, HERBIZARRE, BULBIZARRE, FLORIZARRE, AERODACTYL, MAGBY, IGGLYBUFF, UMBREON, ARTIKODIN, JIGGLYPUFF, SNUBBULL, -1
.he_be_pe: db BAYLEEF, GRIMER, GROTADMORV, HERACROSS, DEMOLOSSE, PERSIAN, EXCELANGUE, -1
.ho_bo_po: db HO_OH, HOOTHOOT, PIDGEY, PONYTA, FLORAVOL, PORYGON, PORYGON2, -1
.ma:       db MAGCARGO, SLUGMA, FEURISSON, CHETIFLOR, WEEZING, MARILL, AZUMARILL, ELECTRODE, FEROSINGE, DEMANTA, -1
.mi:       db DRATINI, MEW, MEWTWO, ECREMEUH, -1
.mu:       db FEUFOREVE, SMOOCHUM, -1
.me:       db MEGANIUM, DITTO, TENTACOOL, MAREEP, -1
.mo:       db FLAAFFY, AEROMITE, TANGELA, -1
.ya:       db SLOWKING, FLAGADOSS, SLOWPOKE, CORNEBRE, YANMA, -1
.yu:       db KADABRA, -1
.yo:       db EMBRYLEX, NOCTOWL, -1
.ra:       db RAIKOU, RAICHU, CHANSEY, RATICATE, LAPRAS, VILEPLUME, LANTURN, -1
.ri:       db CHARMELEON, DRACAUFEU, URSARING, -1
.ru:       db JYNX, LUGIA, -1
.re:       db MAGNETON, COXYCLAQUE, COXY, -1
.ro:       db GOUPIX, -1
.wa:       db COTOVOL, TOTODILE, MACHOP ;, -1
.end:      db -1
