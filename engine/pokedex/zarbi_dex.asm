UpdateZarbiDex:
	ld a, [wZarbiLetter]
	ld c, a
	ld b, NUM_ZARBI
	ld hl, wZarbiDex
.loop
	ld a, [hli]
	and a
	jr z, .done
	cp c
	ret z
	dec b
	jr nz, .loop
	ret

.done
	dec hl
	ld [hl], c
	ret

PrintZarbiWord:
	hlcoord 4, 15
	ld bc, 12
	ld a, ' '
	call ByteFill
	ld a, [wDexCurZarbiIndex]
	ld e, a
	ld d, 0
	ld hl, wZarbiDex
	add hl, de
	ld a, [hl]
	ld e, a
	ld d, 0
	ld hl, ZarbiWords
	add hl, de
	add hl, de
	ld a, [hli]
	ld e, a
	ld d, [hl]
	hlcoord 4, 15
.loop
	ld a, [de]
	cp -1
	ret z
	inc de
	ld [hli], a
	jr .loop

INCLUDE "data/pokemon/zarbi_words.asm"
