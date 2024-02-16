; Footprints are 2x2 tiles each, but are stored as a 16x64-tile image
; (32 rows of 8 footprints per row).
; That means there's a row of the top two tiles for eight footprints,
; then a row of the bottom two tiles for those eight footprints.

; These macros help extract the first and the last two tiles, respectively.
DEF footprint_top    EQUS "0,                 2 * LEN_1BPP_TILE"
DEF footprint_bottom EQUS "2 * LEN_1BPP_TILE, 2 * LEN_1BPP_TILE"

Footprints:
; Entries correspond to Pokémon species, two apiece, 8 tops then 8 bottoms
	table_width LEN_1BPP_TILE * 4, Footprints

; 001-008 top halves
INCBIN "gfx/footprints/bulbizarre.1bpp",  footprint_top
INCBIN "gfx/footprints/herbizarre.1bpp",    footprint_top
INCBIN "gfx/footprints/florizarre.1bpp",   footprint_top
INCBIN "gfx/footprints/charmander.1bpp", footprint_top
INCBIN "gfx/footprints/charmeleon.1bpp", footprint_top
INCBIN "gfx/footprints/dracaufeu.1bpp",  footprint_top
INCBIN "gfx/footprints/carapuce.1bpp",   footprint_top
INCBIN "gfx/footprints/carabaffe.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbizarre.1bpp",  footprint_bottom
INCBIN "gfx/footprints/herbizarre.1bpp",    footprint_bottom
INCBIN "gfx/footprints/florizarre.1bpp",   footprint_bottom
INCBIN "gfx/footprints/charmander.1bpp", footprint_bottom
INCBIN "gfx/footprints/charmeleon.1bpp", footprint_bottom
INCBIN "gfx/footprints/dracaufeu.1bpp",  footprint_bottom
INCBIN "gfx/footprints/carapuce.1bpp",   footprint_bottom
INCBIN "gfx/footprints/carabaffe.1bpp",  footprint_bottom
; 009-016 top halves
INCBIN "gfx/footprints/blastoise.1bpp",  footprint_top
INCBIN "gfx/footprints/chenipan.1bpp",   footprint_top
INCBIN "gfx/footprints/chrysacier.1bpp",    footprint_top
INCBIN "gfx/footprints/butterfree.1bpp", footprint_top
INCBIN "gfx/footprints/aspicot.1bpp",     footprint_top
INCBIN "gfx/footprints/coconfort.1bpp",     footprint_top
INCBIN "gfx/footprints/dardargnan.1bpp",   footprint_top
INCBIN "gfx/footprints/pidgey.1bpp",     footprint_top
; 009-016 bottom halves
INCBIN "gfx/footprints/blastoise.1bpp",  footprint_bottom
INCBIN "gfx/footprints/chenipan.1bpp",   footprint_bottom
INCBIN "gfx/footprints/chrysacier.1bpp",    footprint_bottom
INCBIN "gfx/footprints/butterfree.1bpp", footprint_bottom
INCBIN "gfx/footprints/aspicot.1bpp",     footprint_bottom
INCBIN "gfx/footprints/coconfort.1bpp",     footprint_bottom
INCBIN "gfx/footprints/dardargnan.1bpp",   footprint_bottom
INCBIN "gfx/footprints/pidgey.1bpp",     footprint_bottom
; 017-024 top halves
INCBIN "gfx/footprints/pidgeotto.1bpp",  footprint_top
INCBIN "gfx/footprints/pidgeot.1bpp",    footprint_top
INCBIN "gfx/footprints/rattata.1bpp",    footprint_top
INCBIN "gfx/footprints/raticate.1bpp",   footprint_top
INCBIN "gfx/footprints/spearow.1bpp",    footprint_top
INCBIN "gfx/footprints/fearow.1bpp",     footprint_top
INCBIN "gfx/footprints/abo.1bpp",      footprint_top
INCBIN "gfx/footprints/arbok.1bpp",      footprint_top
; 017-024 bottom halves
INCBIN "gfx/footprints/pidgeotto.1bpp",  footprint_bottom
INCBIN "gfx/footprints/pidgeot.1bpp",    footprint_bottom
INCBIN "gfx/footprints/rattata.1bpp",    footprint_bottom
INCBIN "gfx/footprints/raticate.1bpp",   footprint_bottom
INCBIN "gfx/footprints/spearow.1bpp",    footprint_bottom
INCBIN "gfx/footprints/fearow.1bpp",     footprint_bottom
INCBIN "gfx/footprints/abo.1bpp",      footprint_bottom
INCBIN "gfx/footprints/arbok.1bpp",      footprint_bottom
; 025-032 top halves
INCBIN "gfx/footprints/pikachu.1bpp",    footprint_top
INCBIN "gfx/footprints/raichu.1bpp",     footprint_top
INCBIN "gfx/footprints/sandshrew.1bpp",  footprint_top
INCBIN "gfx/footprints/sandslash.1bpp",  footprint_top
INCBIN "gfx/footprints/nidoran_f.1bpp",  footprint_top
INCBIN "gfx/footprints/nidorina.1bpp",   footprint_top
INCBIN "gfx/footprints/nidoqueen.1bpp",  footprint_top
INCBIN "gfx/footprints/nidoran_m.1bpp",  footprint_top
; 025-032 bottom halves
INCBIN "gfx/footprints/pikachu.1bpp",    footprint_bottom
INCBIN "gfx/footprints/raichu.1bpp",     footprint_bottom
INCBIN "gfx/footprints/sandshrew.1bpp",  footprint_bottom
INCBIN "gfx/footprints/sandslash.1bpp",  footprint_bottom
INCBIN "gfx/footprints/nidoran_f.1bpp",  footprint_bottom
INCBIN "gfx/footprints/nidorina.1bpp",   footprint_bottom
INCBIN "gfx/footprints/nidoqueen.1bpp",  footprint_bottom
INCBIN "gfx/footprints/nidoran_m.1bpp",  footprint_bottom
; 033-040 top halves
INCBIN "gfx/footprints/nidorino.1bpp",   footprint_top
INCBIN "gfx/footprints/nidoking.1bpp",   footprint_top
INCBIN "gfx/footprints/clefairy.1bpp",   footprint_top
INCBIN "gfx/footprints/clefable.1bpp",   footprint_top
INCBIN "gfx/footprints/goupix.1bpp",     footprint_top
INCBIN "gfx/footprints/feunard.1bpp",  footprint_top
INCBIN "gfx/footprints/jigglypuff.1bpp", footprint_top
INCBIN "gfx/footprints/grodoudou.1bpp", footprint_top
; 033-040 bottom halves
INCBIN "gfx/footprints/nidorino.1bpp",   footprint_bottom
INCBIN "gfx/footprints/nidoking.1bpp",   footprint_bottom
INCBIN "gfx/footprints/clefairy.1bpp",   footprint_bottom
INCBIN "gfx/footprints/clefable.1bpp",   footprint_bottom
INCBIN "gfx/footprints/goupix.1bpp",     footprint_bottom
INCBIN "gfx/footprints/feunard.1bpp",  footprint_bottom
INCBIN "gfx/footprints/jigglypuff.1bpp", footprint_bottom
INCBIN "gfx/footprints/grodoudou.1bpp", footprint_bottom
; 041-048 top halves
INCBIN "gfx/footprints/zubat.1bpp",      footprint_top
INCBIN "gfx/footprints/golbat.1bpp",     footprint_top
INCBIN "gfx/footprints/oddish.1bpp",     footprint_top
INCBIN "gfx/footprints/gloom.1bpp",      footprint_top
INCBIN "gfx/footprints/vileplume.1bpp",  footprint_top
INCBIN "gfx/footprints/paras.1bpp",      footprint_top
INCBIN "gfx/footprints/parasect.1bpp",   footprint_top
INCBIN "gfx/footprints/venonat.1bpp",    footprint_top
; 041-048 bottom halves
INCBIN "gfx/footprints/zubat.1bpp",      footprint_bottom
INCBIN "gfx/footprints/golbat.1bpp",     footprint_bottom
INCBIN "gfx/footprints/oddish.1bpp",     footprint_bottom
INCBIN "gfx/footprints/gloom.1bpp",      footprint_bottom
INCBIN "gfx/footprints/vileplume.1bpp",  footprint_bottom
INCBIN "gfx/footprints/paras.1bpp",      footprint_bottom
INCBIN "gfx/footprints/parasect.1bpp",   footprint_bottom
INCBIN "gfx/footprints/venonat.1bpp",    footprint_bottom
; 049-056 top halves
INCBIN "gfx/footprints/aeromite.1bpp",   footprint_top
INCBIN "gfx/footprints/diglett.1bpp",    footprint_top
INCBIN "gfx/footprints/dugtrio.1bpp",    footprint_top
INCBIN "gfx/footprints/meowth.1bpp",     footprint_top
INCBIN "gfx/footprints/persian.1bpp",    footprint_top
INCBIN "gfx/footprints/psyduck.1bpp",    footprint_top
INCBIN "gfx/footprints/akwakwak.1bpp",    footprint_top
INCBIN "gfx/footprints/ferosinge.1bpp",     footprint_top
; 049-056 bottom halves
INCBIN "gfx/footprints/aeromite.1bpp",   footprint_bottom
INCBIN "gfx/footprints/diglett.1bpp",    footprint_bottom
INCBIN "gfx/footprints/dugtrio.1bpp",    footprint_bottom
INCBIN "gfx/footprints/meowth.1bpp",     footprint_bottom
INCBIN "gfx/footprints/persian.1bpp",    footprint_bottom
INCBIN "gfx/footprints/psyduck.1bpp",    footprint_bottom
INCBIN "gfx/footprints/akwakwak.1bpp",    footprint_bottom
INCBIN "gfx/footprints/ferosinge.1bpp",     footprint_bottom
; 057-064 top halves
INCBIN "gfx/footprints/colossinge.1bpp",   footprint_top
INCBIN "gfx/footprints/caninos.1bpp",  footprint_top
INCBIN "gfx/footprints/arcanin.1bpp",   footprint_top
INCBIN "gfx/footprints/poliwag.1bpp",    footprint_top
INCBIN "gfx/footprints/poliwhirl.1bpp",  footprint_top
INCBIN "gfx/footprints/poliwrath.1bpp",  footprint_top
INCBIN "gfx/footprints/abra.1bpp",       footprint_top
INCBIN "gfx/footprints/kadabra.1bpp",    footprint_top
; 057-064 bottom halves
INCBIN "gfx/footprints/colossinge.1bpp",   footprint_bottom
INCBIN "gfx/footprints/caninos.1bpp",  footprint_bottom
INCBIN "gfx/footprints/arcanin.1bpp",   footprint_bottom
INCBIN "gfx/footprints/poliwag.1bpp",    footprint_bottom
INCBIN "gfx/footprints/poliwhirl.1bpp",  footprint_bottom
INCBIN "gfx/footprints/poliwrath.1bpp",  footprint_bottom
INCBIN "gfx/footprints/abra.1bpp",       footprint_bottom
INCBIN "gfx/footprints/kadabra.1bpp",    footprint_bottom
; 065-072 top halves
INCBIN "gfx/footprints/alakazam.1bpp",   footprint_top
INCBIN "gfx/footprints/machop.1bpp",     footprint_top
INCBIN "gfx/footprints/machoke.1bpp",    footprint_top
INCBIN "gfx/footprints/machamp.1bpp",    footprint_top
INCBIN "gfx/footprints/chetiflor.1bpp", footprint_top
INCBIN "gfx/footprints/boustiflor.1bpp", footprint_top
INCBIN "gfx/footprints/empiflor.1bpp", footprint_top
INCBIN "gfx/footprints/tentacool.1bpp",  footprint_top
; 065-072 bottom halves
INCBIN "gfx/footprints/alakazam.1bpp",   footprint_bottom
INCBIN "gfx/footprints/machop.1bpp",     footprint_bottom
INCBIN "gfx/footprints/machoke.1bpp",    footprint_bottom
INCBIN "gfx/footprints/machamp.1bpp",    footprint_bottom
INCBIN "gfx/footprints/chetiflor.1bpp", footprint_bottom
INCBIN "gfx/footprints/boustiflor.1bpp", footprint_bottom
INCBIN "gfx/footprints/empiflor.1bpp", footprint_bottom
INCBIN "gfx/footprints/tentacool.1bpp",  footprint_bottom
; 073-080 top halves
INCBIN "gfx/footprints/tentacruel.1bpp", footprint_top
INCBIN "gfx/footprints/geodude.1bpp",    footprint_top
INCBIN "gfx/footprints/gravalanch.1bpp",   footprint_top
INCBIN "gfx/footprints/grolem.1bpp",      footprint_top
INCBIN "gfx/footprints/ponyta.1bpp",     footprint_top
INCBIN "gfx/footprints/galopa.1bpp",   footprint_top
INCBIN "gfx/footprints/slowpoke.1bpp",   footprint_top
INCBIN "gfx/footprints/flagadoss.1bpp",    footprint_top
; 073-080 bottom halves
INCBIN "gfx/footprints/tentacruel.1bpp", footprint_bottom
INCBIN "gfx/footprints/geodude.1bpp",    footprint_bottom
INCBIN "gfx/footprints/gravalanch.1bpp",   footprint_bottom
INCBIN "gfx/footprints/grolem.1bpp",      footprint_bottom
INCBIN "gfx/footprints/ponyta.1bpp",     footprint_bottom
INCBIN "gfx/footprints/galopa.1bpp",   footprint_bottom
INCBIN "gfx/footprints/slowpoke.1bpp",   footprint_bottom
INCBIN "gfx/footprints/flagadoss.1bpp",    footprint_bottom
; 081-088 top halves
INCBIN "gfx/footprints/magnemite.1bpp",  footprint_top
INCBIN "gfx/footprints/magneton.1bpp",   footprint_top
INCBIN "gfx/footprints/canarticho.1bpp", footprint_top
INCBIN "gfx/footprints/doduo.1bpp",      footprint_top
INCBIN "gfx/footprints/dodrio.1bpp",     footprint_top
INCBIN "gfx/footprints/seel.1bpp",       footprint_top
INCBIN "gfx/footprints/dewgong.1bpp",    footprint_top
INCBIN "gfx/footprints/grimer.1bpp",     footprint_top
; 081-088 bottom halves
INCBIN "gfx/footprints/magnemite.1bpp",  footprint_bottom
INCBIN "gfx/footprints/magneton.1bpp",   footprint_bottom
INCBIN "gfx/footprints/canarticho.1bpp", footprint_bottom
INCBIN "gfx/footprints/doduo.1bpp",      footprint_bottom
INCBIN "gfx/footprints/dodrio.1bpp",     footprint_bottom
INCBIN "gfx/footprints/seel.1bpp",       footprint_bottom
INCBIN "gfx/footprints/dewgong.1bpp",    footprint_bottom
INCBIN "gfx/footprints/grimer.1bpp",     footprint_bottom
; 089-096 top halves
INCBIN "gfx/footprints/grotadmorv.1bpp",        footprint_top
INCBIN "gfx/footprints/shellder.1bpp",   footprint_top
INCBIN "gfx/footprints/crustabri.1bpp",   footprint_top
INCBIN "gfx/footprints/fantominus.1bpp",     footprint_top
INCBIN "gfx/footprints/haunter.1bpp",    footprint_top
INCBIN "gfx/footprints/ectoplasma.1bpp",     footprint_top
INCBIN "gfx/footprints/onix.1bpp",       footprint_top
INCBIN "gfx/footprints/drowzee.1bpp",    footprint_top
; 089-096 bottom halves
INCBIN "gfx/footprints/grotadmorv.1bpp",        footprint_bottom
INCBIN "gfx/footprints/shellder.1bpp",   footprint_bottom
INCBIN "gfx/footprints/crustabri.1bpp",   footprint_bottom
INCBIN "gfx/footprints/fantominus.1bpp",     footprint_bottom
INCBIN "gfx/footprints/haunter.1bpp",    footprint_bottom
INCBIN "gfx/footprints/ectoplasma.1bpp",     footprint_bottom
INCBIN "gfx/footprints/onix.1bpp",       footprint_bottom
INCBIN "gfx/footprints/drowzee.1bpp",    footprint_bottom
; 097-104 top halves
INCBIN "gfx/footprints/hypno.1bpp",      footprint_top
INCBIN "gfx/footprints/krabby.1bpp",     footprint_top
INCBIN "gfx/footprints/kingler.1bpp",    footprint_top
INCBIN "gfx/footprints/voltorb.1bpp",    footprint_top
INCBIN "gfx/footprints/electrode.1bpp",  footprint_top
INCBIN "gfx/footprints/exeggcute.1bpp",  footprint_top
INCBIN "gfx/footprints/exeggutor.1bpp",  footprint_top
INCBIN "gfx/footprints/cubone.1bpp",     footprint_top
; 097-104 bottom halves
INCBIN "gfx/footprints/hypno.1bpp",      footprint_bottom
INCBIN "gfx/footprints/krabby.1bpp",     footprint_bottom
INCBIN "gfx/footprints/kingler.1bpp",    footprint_bottom
INCBIN "gfx/footprints/voltorb.1bpp",    footprint_bottom
INCBIN "gfx/footprints/electrode.1bpp",  footprint_bottom
INCBIN "gfx/footprints/exeggcute.1bpp",  footprint_bottom
INCBIN "gfx/footprints/exeggutor.1bpp",  footprint_bottom
INCBIN "gfx/footprints/cubone.1bpp",     footprint_bottom
; 105-112 top halves
INCBIN "gfx/footprints/marowak.1bpp",    footprint_top
INCBIN "gfx/footprints/hitmonlee.1bpp",  footprint_top
INCBIN "gfx/footprints/hitmonchan.1bpp", footprint_top
INCBIN "gfx/footprints/excelangue.1bpp",  footprint_top
INCBIN "gfx/footprints/koffing.1bpp",    footprint_top
INCBIN "gfx/footprints/weezing.1bpp",    footprint_top
INCBIN "gfx/footprints/rhyhorn.1bpp",    footprint_top
INCBIN "gfx/footprints/rhydon.1bpp",     footprint_top
; 105-112 bottom halves
INCBIN "gfx/footprints/marowak.1bpp",    footprint_bottom
INCBIN "gfx/footprints/hitmonlee.1bpp",  footprint_bottom
INCBIN "gfx/footprints/hitmonchan.1bpp", footprint_bottom
INCBIN "gfx/footprints/excelangue.1bpp",  footprint_bottom
INCBIN "gfx/footprints/koffing.1bpp",    footprint_bottom
INCBIN "gfx/footprints/weezing.1bpp",    footprint_bottom
INCBIN "gfx/footprints/rhyhorn.1bpp",    footprint_bottom
INCBIN "gfx/footprints/rhydon.1bpp",     footprint_bottom
; 113-120 top halves
INCBIN "gfx/footprints/chansey.1bpp",    footprint_top
INCBIN "gfx/footprints/tangela.1bpp",    footprint_top
INCBIN "gfx/footprints/kangaskhan.1bpp", footprint_top
INCBIN "gfx/footprints/horsea.1bpp",     footprint_top
INCBIN "gfx/footprints/seadra.1bpp",     footprint_top
INCBIN "gfx/footprints/goldeen.1bpp",    footprint_top
INCBIN "gfx/footprints/seaking.1bpp",    footprint_top
INCBIN "gfx/footprints/staryu.1bpp",     footprint_top
; 113-120 bottom halves
INCBIN "gfx/footprints/chansey.1bpp",    footprint_bottom
INCBIN "gfx/footprints/tangela.1bpp",    footprint_bottom
INCBIN "gfx/footprints/kangaskhan.1bpp", footprint_bottom
INCBIN "gfx/footprints/horsea.1bpp",     footprint_bottom
INCBIN "gfx/footprints/seadra.1bpp",     footprint_bottom
INCBIN "gfx/footprints/goldeen.1bpp",    footprint_bottom
INCBIN "gfx/footprints/seaking.1bpp",    footprint_bottom
INCBIN "gfx/footprints/staryu.1bpp",     footprint_bottom
; 121-128 top halves
INCBIN "gfx/footprints/starmie.1bpp",    footprint_top
INCBIN "gfx/footprints/mr__mime.1bpp",   footprint_top
INCBIN "gfx/footprints/scyther.1bpp",    footprint_top
INCBIN "gfx/footprints/jynx.1bpp",       footprint_top
INCBIN "gfx/footprints/elektek.1bpp", footprint_top
INCBIN "gfx/footprints/magmar.1bpp",     footprint_top
INCBIN "gfx/footprints/pinsir.1bpp",     footprint_top
INCBIN "gfx/footprints/tauros.1bpp",     footprint_top
; 121-128 bottom halves
INCBIN "gfx/footprints/starmie.1bpp",    footprint_bottom
INCBIN "gfx/footprints/mr__mime.1bpp",   footprint_bottom
INCBIN "gfx/footprints/scyther.1bpp",    footprint_bottom
INCBIN "gfx/footprints/jynx.1bpp",       footprint_bottom
INCBIN "gfx/footprints/elektek.1bpp", footprint_bottom
INCBIN "gfx/footprints/magmar.1bpp",     footprint_bottom
INCBIN "gfx/footprints/pinsir.1bpp",     footprint_bottom
INCBIN "gfx/footprints/tauros.1bpp",     footprint_bottom
; 129-136 top halves
INCBIN "gfx/footprints/magikarp.1bpp",   footprint_top
INCBIN "gfx/footprints/gyarados.1bpp",   footprint_top
INCBIN "gfx/footprints/lapras.1bpp",     footprint_top
INCBIN "gfx/footprints/ditto.1bpp",      footprint_top
INCBIN "gfx/footprints/evoli.1bpp",      footprint_top
INCBIN "gfx/footprints/aquali.1bpp",   footprint_top
INCBIN "gfx/footprints/jolteon.1bpp",    footprint_top
INCBIN "gfx/footprints/flareon.1bpp",    footprint_top
; 129-136 bottom halves
INCBIN "gfx/footprints/magikarp.1bpp",   footprint_bottom
INCBIN "gfx/footprints/gyarados.1bpp",   footprint_bottom
INCBIN "gfx/footprints/lapras.1bpp",     footprint_bottom
INCBIN "gfx/footprints/ditto.1bpp",      footprint_bottom
INCBIN "gfx/footprints/evoli.1bpp",      footprint_bottom
INCBIN "gfx/footprints/aquali.1bpp",   footprint_bottom
INCBIN "gfx/footprints/jolteon.1bpp",    footprint_bottom
INCBIN "gfx/footprints/flareon.1bpp",    footprint_bottom
; 137-144 top halves
INCBIN "gfx/footprints/porygon.1bpp",    footprint_top
INCBIN "gfx/footprints/amonita.1bpp",    footprint_top
INCBIN "gfx/footprints/amonistar.1bpp",    footprint_top
INCBIN "gfx/footprints/kabuto.1bpp",     footprint_top
INCBIN "gfx/footprints/kabutops.1bpp",   footprint_top
INCBIN "gfx/footprints/aerodactyl.1bpp", footprint_top
INCBIN "gfx/footprints/snorlax.1bpp",    footprint_top
INCBIN "gfx/footprints/artikodin.1bpp",   footprint_top
; 137-144 bottom halves
INCBIN "gfx/footprints/porygon.1bpp",    footprint_bottom
INCBIN "gfx/footprints/amonita.1bpp",    footprint_bottom
INCBIN "gfx/footprints/amonistar.1bpp",    footprint_bottom
INCBIN "gfx/footprints/kabuto.1bpp",     footprint_bottom
INCBIN "gfx/footprints/kabutops.1bpp",   footprint_bottom
INCBIN "gfx/footprints/aerodactyl.1bpp", footprint_bottom
INCBIN "gfx/footprints/snorlax.1bpp",    footprint_bottom
INCBIN "gfx/footprints/artikodin.1bpp",   footprint_bottom
; 145-152 top halves
INCBIN "gfx/footprints/electhor.1bpp",     footprint_top
INCBIN "gfx/footprints/moltres.1bpp",    footprint_top
INCBIN "gfx/footprints/dratini.1bpp",    footprint_top
INCBIN "gfx/footprints/draco.1bpp",  footprint_top
INCBIN "gfx/footprints/dracolosse.1bpp",  footprint_top
INCBIN "gfx/footprints/mewtwo.1bpp",     footprint_top
INCBIN "gfx/footprints/mew.1bpp",        footprint_top
INCBIN "gfx/footprints/germignon.1bpp",  footprint_top
; 145-152 bottom halves
INCBIN "gfx/footprints/electhor.1bpp",     footprint_bottom
INCBIN "gfx/footprints/moltres.1bpp",    footprint_bottom
INCBIN "gfx/footprints/dratini.1bpp",    footprint_bottom
INCBIN "gfx/footprints/draco.1bpp",  footprint_bottom
INCBIN "gfx/footprints/dracolosse.1bpp",  footprint_bottom
INCBIN "gfx/footprints/mewtwo.1bpp",     footprint_bottom
INCBIN "gfx/footprints/mew.1bpp",        footprint_bottom
INCBIN "gfx/footprints/germignon.1bpp",  footprint_bottom
; 153-160 top halves
INCBIN "gfx/footprints/bayleef.1bpp",    footprint_top
INCBIN "gfx/footprints/meganium.1bpp",   footprint_top
INCBIN "gfx/footprints/hericendre.1bpp",  footprint_top
INCBIN "gfx/footprints/feurisson.1bpp",    footprint_top
INCBIN "gfx/footprints/typhlosion.1bpp", footprint_top
INCBIN "gfx/footprints/totodile.1bpp",   footprint_top
INCBIN "gfx/footprints/crocrodil.1bpp",   footprint_top
INCBIN "gfx/footprints/aligatueur.1bpp", footprint_top
; 153-160 bottom halves
INCBIN "gfx/footprints/bayleef.1bpp",    footprint_bottom
INCBIN "gfx/footprints/meganium.1bpp",   footprint_bottom
INCBIN "gfx/footprints/hericendre.1bpp",  footprint_bottom
INCBIN "gfx/footprints/feurisson.1bpp",    footprint_bottom
INCBIN "gfx/footprints/typhlosion.1bpp", footprint_bottom
INCBIN "gfx/footprints/totodile.1bpp",   footprint_bottom
INCBIN "gfx/footprints/crocrodil.1bpp",   footprint_bottom
INCBIN "gfx/footprints/aligatueur.1bpp", footprint_bottom
; 161-168 top halves
INCBIN "gfx/footprints/fouinette.1bpp",    footprint_top
INCBIN "gfx/footprints/fouinar.1bpp",     footprint_top
INCBIN "gfx/footprints/hoothoot.1bpp",   footprint_top
INCBIN "gfx/footprints/noctowl.1bpp",    footprint_top
INCBIN "gfx/footprints/coxy.1bpp",     footprint_top
INCBIN "gfx/footprints/coxyclaque.1bpp",     footprint_top
INCBIN "gfx/footprints/spinarak.1bpp",   footprint_top
INCBIN "gfx/footprints/ariados.1bpp",    footprint_top
; 161-168 bottom halves
INCBIN "gfx/footprints/fouinette.1bpp",    footprint_bottom
INCBIN "gfx/footprints/fouinar.1bpp",     footprint_bottom
INCBIN "gfx/footprints/hoothoot.1bpp",   footprint_bottom
INCBIN "gfx/footprints/noctowl.1bpp",    footprint_bottom
INCBIN "gfx/footprints/coxy.1bpp",     footprint_bottom
INCBIN "gfx/footprints/coxyclaque.1bpp",     footprint_bottom
INCBIN "gfx/footprints/spinarak.1bpp",   footprint_bottom
INCBIN "gfx/footprints/ariados.1bpp",    footprint_bottom
; 169-176 top halves
INCBIN "gfx/footprints/crobat.1bpp",     footprint_top
INCBIN "gfx/footprints/chinchou.1bpp",   footprint_top
INCBIN "gfx/footprints/lanturn.1bpp",    footprint_top
INCBIN "gfx/footprints/pichu.1bpp",      footprint_top
INCBIN "gfx/footprints/cleffa.1bpp",     footprint_top
INCBIN "gfx/footprints/igglybuff.1bpp",  footprint_top
INCBIN "gfx/footprints/togepi.1bpp",     footprint_top
INCBIN "gfx/footprints/togetic.1bpp",    footprint_top
; 169-176 bottom halves
INCBIN "gfx/footprints/crobat.1bpp",     footprint_bottom
INCBIN "gfx/footprints/chinchou.1bpp",   footprint_bottom
INCBIN "gfx/footprints/lanturn.1bpp",    footprint_bottom
INCBIN "gfx/footprints/pichu.1bpp",      footprint_bottom
INCBIN "gfx/footprints/cleffa.1bpp",     footprint_bottom
INCBIN "gfx/footprints/igglybuff.1bpp",  footprint_bottom
INCBIN "gfx/footprints/togepi.1bpp",     footprint_bottom
INCBIN "gfx/footprints/togetic.1bpp",    footprint_bottom
; 177-184 top halves
INCBIN "gfx/footprints/natu.1bpp",       footprint_top
INCBIN "gfx/footprints/xatu.1bpp",       footprint_top
INCBIN "gfx/footprints/mareep.1bpp",     footprint_top
INCBIN "gfx/footprints/flaaffy.1bpp",    footprint_top
INCBIN "gfx/footprints/ampharos.1bpp",   footprint_top
INCBIN "gfx/footprints/bellossom.1bpp",  footprint_top
INCBIN "gfx/footprints/marill.1bpp",     footprint_top
INCBIN "gfx/footprints/azumarill.1bpp",  footprint_top
; 177-184 bottom halves
INCBIN "gfx/footprints/natu.1bpp",       footprint_bottom
INCBIN "gfx/footprints/xatu.1bpp",       footprint_bottom
INCBIN "gfx/footprints/mareep.1bpp",     footprint_bottom
INCBIN "gfx/footprints/flaaffy.1bpp",    footprint_bottom
INCBIN "gfx/footprints/ampharos.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bellossom.1bpp",  footprint_bottom
INCBIN "gfx/footprints/marill.1bpp",     footprint_bottom
INCBIN "gfx/footprints/azumarill.1bpp",  footprint_bottom
; 185-192 top halves
INCBIN "gfx/footprints/sudowoodo.1bpp",  footprint_top
INCBIN "gfx/footprints/politoed.1bpp",   footprint_top
INCBIN "gfx/footprints/granivol.1bpp",     footprint_top
INCBIN "gfx/footprints/floravol.1bpp",   footprint_top
INCBIN "gfx/footprints/cotovol.1bpp",   footprint_top
INCBIN "gfx/footprints/capumain.1bpp",      footprint_top
INCBIN "gfx/footprints/sunkern.1bpp",    footprint_top
INCBIN "gfx/footprints/heliatronc.1bpp",   footprint_top
; 185-192 bottom halves
INCBIN "gfx/footprints/sudowoodo.1bpp",  footprint_bottom
INCBIN "gfx/footprints/politoed.1bpp",   footprint_bottom
INCBIN "gfx/footprints/granivol.1bpp",     footprint_bottom
INCBIN "gfx/footprints/floravol.1bpp",   footprint_bottom
INCBIN "gfx/footprints/cotovol.1bpp",   footprint_bottom
INCBIN "gfx/footprints/capumain.1bpp",      footprint_bottom
INCBIN "gfx/footprints/sunkern.1bpp",    footprint_bottom
INCBIN "gfx/footprints/heliatronc.1bpp",   footprint_bottom
; 193-200 top halves
INCBIN "gfx/footprints/yanma.1bpp",      footprint_top
INCBIN "gfx/footprints/axoloto.1bpp",     footprint_top
INCBIN "gfx/footprints/quagsire.1bpp",   footprint_top
INCBIN "gfx/footprints/espeon.1bpp",     footprint_top
INCBIN "gfx/footprints/umbreon.1bpp",    footprint_top
INCBIN "gfx/footprints/cornebre.1bpp",    footprint_top
INCBIN "gfx/footprints/slowking.1bpp",   footprint_top
INCBIN "gfx/footprints/feuforeve.1bpp", footprint_top
; 193-200 bottom halves
INCBIN "gfx/footprints/yanma.1bpp",      footprint_bottom
INCBIN "gfx/footprints/axoloto.1bpp",     footprint_bottom
INCBIN "gfx/footprints/quagsire.1bpp",   footprint_bottom
INCBIN "gfx/footprints/espeon.1bpp",     footprint_bottom
INCBIN "gfx/footprints/umbreon.1bpp",    footprint_bottom
INCBIN "gfx/footprints/cornebre.1bpp",    footprint_bottom
INCBIN "gfx/footprints/slowking.1bpp",   footprint_bottom
INCBIN "gfx/footprints/feuforeve.1bpp", footprint_bottom
; 201-208 top halves
INCBIN "gfx/footprints/unown.1bpp",      footprint_top
INCBIN "gfx/footprints/wobbuffet.1bpp",  footprint_top
INCBIN "gfx/footprints/girafarig.1bpp",  footprint_top
INCBIN "gfx/footprints/pineco.1bpp",     footprint_top
INCBIN "gfx/footprints/foretress.1bpp", footprint_top
INCBIN "gfx/footprints/dunsparce.1bpp",  footprint_top
INCBIN "gfx/footprints/gligar.1bpp",     footprint_top
INCBIN "gfx/footprints/steelix.1bpp",    footprint_top
; 201-208 bottom halves
INCBIN "gfx/footprints/unown.1bpp",      footprint_bottom
INCBIN "gfx/footprints/wobbuffet.1bpp",  footprint_bottom
INCBIN "gfx/footprints/girafarig.1bpp",  footprint_bottom
INCBIN "gfx/footprints/pineco.1bpp",     footprint_bottom
INCBIN "gfx/footprints/foretress.1bpp", footprint_bottom
INCBIN "gfx/footprints/dunsparce.1bpp",  footprint_bottom
INCBIN "gfx/footprints/gligar.1bpp",     footprint_bottom
INCBIN "gfx/footprints/steelix.1bpp",    footprint_bottom
; 209-216 top halves
INCBIN "gfx/footprints/snubbull.1bpp",   footprint_top
INCBIN "gfx/footprints/granbull.1bpp",   footprint_top
INCBIN "gfx/footprints/qwilfish.1bpp",   footprint_top
INCBIN "gfx/footprints/cizayox.1bpp",     footprint_top
INCBIN "gfx/footprints/caratroc.1bpp",    footprint_top
INCBIN "gfx/footprints/heracross.1bpp",  footprint_top
INCBIN "gfx/footprints/farfuret.1bpp",    footprint_top
INCBIN "gfx/footprints/teddiursa.1bpp",  footprint_top
; 209-216 bottom halves
INCBIN "gfx/footprints/snubbull.1bpp",   footprint_bottom
INCBIN "gfx/footprints/granbull.1bpp",   footprint_bottom
INCBIN "gfx/footprints/qwilfish.1bpp",   footprint_bottom
INCBIN "gfx/footprints/cizayox.1bpp",     footprint_bottom
INCBIN "gfx/footprints/caratroc.1bpp",    footprint_bottom
INCBIN "gfx/footprints/heracross.1bpp",  footprint_bottom
INCBIN "gfx/footprints/farfuret.1bpp",    footprint_bottom
INCBIN "gfx/footprints/teddiursa.1bpp",  footprint_bottom
; 217-224 top halves
INCBIN "gfx/footprints/ursaring.1bpp",   footprint_top
INCBIN "gfx/footprints/slugma.1bpp",     footprint_top
INCBIN "gfx/footprints/magcargo.1bpp",   footprint_top
INCBIN "gfx/footprints/swinub.1bpp",     footprint_top
INCBIN "gfx/footprints/cochignon.1bpp",  footprint_top
INCBIN "gfx/footprints/corayon.1bpp",    footprint_top
INCBIN "gfx/footprints/remoraid.1bpp",   footprint_top
INCBIN "gfx/footprints/octillery.1bpp",  footprint_top
; 217-224 bottom halves
INCBIN "gfx/footprints/ursaring.1bpp",   footprint_bottom
INCBIN "gfx/footprints/slugma.1bpp",     footprint_bottom
INCBIN "gfx/footprints/magcargo.1bpp",   footprint_bottom
INCBIN "gfx/footprints/swinub.1bpp",     footprint_bottom
INCBIN "gfx/footprints/cochignon.1bpp",  footprint_bottom
INCBIN "gfx/footprints/corayon.1bpp",    footprint_bottom
INCBIN "gfx/footprints/remoraid.1bpp",   footprint_bottom
INCBIN "gfx/footprints/octillery.1bpp",  footprint_bottom
; 225-232 top halves
INCBIN "gfx/footprints/cadoizo.1bpp",   footprint_top
INCBIN "gfx/footprints/demanta.1bpp",    footprint_top
INCBIN "gfx/footprints/airmure.1bpp",   footprint_top
INCBIN "gfx/footprints/houndour.1bpp",   footprint_top
INCBIN "gfx/footprints/demolosse.1bpp",   footprint_top
INCBIN "gfx/footprints/kingdra.1bpp",    footprint_top
INCBIN "gfx/footprints/phanpy.1bpp",     footprint_top
INCBIN "gfx/footprints/donphan.1bpp",    footprint_top
; 225-232 bottom halves
INCBIN "gfx/footprints/cadoizo.1bpp",   footprint_bottom
INCBIN "gfx/footprints/demanta.1bpp",    footprint_bottom
INCBIN "gfx/footprints/airmure.1bpp",   footprint_bottom
INCBIN "gfx/footprints/houndour.1bpp",   footprint_bottom
INCBIN "gfx/footprints/demolosse.1bpp",   footprint_bottom
INCBIN "gfx/footprints/kingdra.1bpp",    footprint_bottom
INCBIN "gfx/footprints/phanpy.1bpp",     footprint_bottom
INCBIN "gfx/footprints/donphan.1bpp",    footprint_bottom
; 233-240 top halves
INCBIN "gfx/footprints/porygon2.1bpp",   footprint_top
INCBIN "gfx/footprints/cerfrousse.1bpp",   footprint_top
INCBIN "gfx/footprints/smeargle.1bpp",   footprint_top
INCBIN "gfx/footprints/debugant.1bpp",    footprint_top
INCBIN "gfx/footprints/hitmontop.1bpp",  footprint_top
INCBIN "gfx/footprints/smoochum.1bpp",   footprint_top
INCBIN "gfx/footprints/elekid.1bpp",     footprint_top
INCBIN "gfx/footprints/magby.1bpp",      footprint_top
; 233-240 bottom halves
INCBIN "gfx/footprints/porygon2.1bpp",   footprint_bottom
INCBIN "gfx/footprints/cerfrousse.1bpp",   footprint_bottom
INCBIN "gfx/footprints/smeargle.1bpp",   footprint_bottom
INCBIN "gfx/footprints/debugant.1bpp",    footprint_bottom
INCBIN "gfx/footprints/hitmontop.1bpp",  footprint_bottom
INCBIN "gfx/footprints/smoochum.1bpp",   footprint_bottom
INCBIN "gfx/footprints/elekid.1bpp",     footprint_bottom
INCBIN "gfx/footprints/magby.1bpp",      footprint_bottom
; 241-248 top halves
INCBIN "gfx/footprints/ecremeuh.1bpp",    footprint_top
INCBIN "gfx/footprints/blissey.1bpp",    footprint_top
INCBIN "gfx/footprints/raikou.1bpp",     footprint_top
INCBIN "gfx/footprints/entei.1bpp",      footprint_top
INCBIN "gfx/footprints/suicune.1bpp",    footprint_top
INCBIN "gfx/footprints/embrylex.1bpp",   footprint_top
INCBIN "gfx/footprints/pupitar.1bpp",    footprint_top
INCBIN "gfx/footprints/tyranitar.1bpp",  footprint_top
; 241-248 bottom halves
INCBIN "gfx/footprints/ecremeuh.1bpp",    footprint_bottom
INCBIN "gfx/footprints/blissey.1bpp",    footprint_bottom
INCBIN "gfx/footprints/raikou.1bpp",     footprint_bottom
INCBIN "gfx/footprints/entei.1bpp",      footprint_bottom
INCBIN "gfx/footprints/suicune.1bpp",    footprint_bottom
INCBIN "gfx/footprints/embrylex.1bpp",   footprint_bottom
INCBIN "gfx/footprints/pupitar.1bpp",    footprint_bottom
INCBIN "gfx/footprints/tyranitar.1bpp",  footprint_bottom
; 249-256 top halves
INCBIN "gfx/footprints/lugia.1bpp",      footprint_top
INCBIN "gfx/footprints/ho_oh.1bpp",      footprint_top
INCBIN "gfx/footprints/celebi.1bpp",     footprint_top
INCBIN "gfx/footprints/252.1bpp",        footprint_top
INCBIN "gfx/footprints/253.1bpp",        footprint_top
INCBIN "gfx/footprints/254.1bpp",        footprint_top
INCBIN "gfx/footprints/255.1bpp",        footprint_top
INCBIN "gfx/footprints/256.1bpp",        footprint_top
; 249-256 bottom halves
INCBIN "gfx/footprints/lugia.1bpp",      footprint_bottom
INCBIN "gfx/footprints/ho_oh.1bpp",      footprint_bottom
INCBIN "gfx/footprints/celebi.1bpp",     footprint_bottom
INCBIN "gfx/footprints/252.1bpp",        footprint_bottom
INCBIN "gfx/footprints/253.1bpp",        footprint_bottom
INCBIN "gfx/footprints/254.1bpp",        footprint_bottom
INCBIN "gfx/footprints/255.1bpp",        footprint_bottom
INCBIN "gfx/footprints/256.1bpp",        footprint_bottom

	assert_table_length $100
