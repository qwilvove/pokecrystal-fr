RotateZarbiFrontpic:
; something to do with Zarbi printer
	push de
	xor a ; BANK(sScratch)
	call OpenSRAM
	ld hl, sScratch
	ld bc, 0
.loop
	push bc
	push hl
	push bc
	ld de, wPrintedZarbiTileSource
	call .Copy
	call .Rotate
	ld hl, ZarbiPrinter_GBPrinterRectangle
	pop bc
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld e, a
	ld d, [hl]
	ld hl, wPrintedZarbiTileDest
	call .Copy
	pop hl
	ld bc, TILE_SIZE
	add hl, bc
	pop bc
	inc c
	ld a, c
	cp 7 * 7
	jr c, .loop

	ld hl, wGameboyPrinter2bppSource
	ld de, sScratch
	ld bc, 7 * 7 tiles
	call CopyBytes
	pop hl
	ld de, sScratch
	ld c, 7 * 7
	ldh a, [hROMBank]
	ld b, a
	call Get2bpp
	call CloseSRAM
	ret

.Copy:
	ld c, TILE_SIZE
.loop_copy
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop_copy
	ret

.Rotate:
	ld hl, wPrintedZarbiTileDest
	ld e, %10000000
	ld d, 8
.loop_decompress
	push hl
	ld hl, wPrintedZarbiTileSource
	call .CountSetBit
	pop hl
	ld a, b
	ld [hli], a
	push hl
	ld hl, wPrintedZarbiTileSource + 1
	call .CountSetBit
	pop hl
	ld a, b
	ld [hli], a
	srl e
	dec d
	jr nz, .loop_decompress
	ret

.CountSetBit:
	ld b, 0
	ld c, 8
.loop_count
	ld a, [hli]
	and e
	jr z, .clear
	scf
	jr .apply

.clear
	and a

.apply
	rr b
	inc hl
	dec c
	jr nz, .loop_count
	ret

ZarbiPrinter_GBPrinterRectangle:
for y, 7
for x, 7 - 1, -1, -1
	dw wGameboyPrinter2bppSource tile (x * 7 + y)
endr
endr
