CheckMagicarpeLength:
	; Returns 3 if you select a Magicarpe that beats the previous record.
	; Returns 2 if you select a Magicarpe, but the current record is longer.
	; Returns 1 if you press B in the Pokemon selection menu.
	; Returns 0 if the Pokemon you select is not a Magicarpe.

	; Let's start by selecting a Magicarpe.
	farcall SelectMonFromParty
	jr c, .declined
	ld a, [wCurPartySpecies]
	cp MAGICARPE
	jr nz, .not_magicarpe

	; Now let's compute its length based on its DVs and ID.
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1Species
	ld bc, PARTYMON_STRUCT_LENGTH
	call AddNTimes
	push hl
	ld bc, MON_DVS
	add hl, bc
	ld d, h
	ld e, l
	pop hl
	ld bc, MON_ID
	add hl, bc
	ld b, h
	ld c, l
	call CalcMagicarpeLength
	call PrintMagicarpeLength
	farcall StubbedTrainerRankings_MagicarpeLength
	ld hl, .MagicarpeGuruMeasureText
	call PrintText

	; Did we beat the record?
	ld hl, wMagicarpeLength
	ld de, wBestMagicarpeLengthFeet
	ld c, 2
	call CompareBytes
	jr nc, .not_long_enough

	; NEW RECORD!!! Let's save that.
	ld hl, wMagicarpeLength
	ld de, wBestMagicarpeLengthFeet
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	inc de
	ld a, [wCurPartyMon]
	ld hl, wPartyMonOTs
	call SkipNames
	call CopyBytes
	ld a, MAGICARPELENGTH_BEAT_RECORD
	ld [wScriptVar], a
	ret

.not_long_enough
	ld a, MAGICARPELENGTH_TOO_SHORT
	ld [wScriptVar], a
	ret

.declined
	ld a, MAGICARPELENGTH_REFUSED
	ld [wScriptVar], a
	ret

.not_magicarpe
	xor a ; MAGICARPELENGTH_NOT_MAGICARPE
	ld [wScriptVar], a
	ret

.MagicarpeGuruMeasureText:
	text_far _MagicarpeGuruMeasureText
	text_end

PrintMagicarpeLength:
	ld hl, wStringBuffer1
	ld de, wMagicarpeLength
	lb bc, PRINTNUM_LEADINGZEROS | 2, 4
	call PrintNum
	ld a, "@"
	ld [wStringBuffer1 + 5], a
	ld a, [wStringBuffer1 + 3]
	ld [wStringBuffer1 + 4], a
	ld a, "."
	ld [wStringBuffer1 + 3], a
	ld hl, wStringBuffer1

.loop:
	ld a, [hli]
	cp "0"
	jr z, .loop

	dec hl
	ld de, wStringBuffer1
	ld bc, 6
	jp CopyBytes

CalcMagicarpeLength:
; Return Magicarpe's length (in mm) at wMagicarpeLength (big endian).
;
; input:
;   de: wEnemyMonDVs
;   bc: wPlayerID

; This function is poorly commented.

; In short, it generates a value between 190 and 1786 using
; a Magicarpe's DVs and its trainer ID. This value is further
; filtered in LoadEnemyMon to make longer Magicarpe even rarer.

; The value is generated from a lookup table.
; The index is determined by the dv xored with the player's trainer id.

; bc = rrc(dv[0]) ++ rrc(dv[1]) ^ rrc(id)

; if bc < 10:    [wMagicarpeLength] = c + 190
; if bc ≥ $ff00: [wMagicarpeLength] = c + 1370
; else:          [wMagicarpeLength] = z * 100 + (bc - x) / y

; X, Y, and Z depend on the value of b as follows:

; if b = 0:        x =   310,  y =   2,  z =  3
; if b = 1:        x =   710,  y =   4,  z =  4
; if b = 2-9:      x =  2710,  y =  20,  z =  5
; if b = 10-29:    x =  7710,  y =  50,  z =  6
; if b = 30-68:    x = 17710,  y = 100,  z =  7
; if b = 69-126:   x = 32710,  y = 150,  z =  8
; if b = 127-185:  x = 47710,  y = 150,  z =  9
; if b = 186-224:  x = 57710,  y = 100,  z = 10
; if b = 225-243:  x = 62710,  y =  50,  z = 11
; if b = 244-251:  x = 64710,  y =  20,  z = 12
; if b = 252-253:  x = 65210,  y =   5,  z = 13
; if b = 254:      x = 65410,  y =   2,  z = 14

	; bc = rrc(dv[0]) ++ rrc(dv[1]) ^ rrc(id)

	; id
	ld h, b
	ld l, c
	ld a, [hli]
	ld b, a
	ld c, [hl]
	rrc b
	rrc c

	; dv
	ld a, [de]
	inc de
	rrca
	rrca
	xor b
	ld b, a

	ld a, [de]
	rrca
	rrca
	xor c
	ld c, a

	; if bc < 10:
	;     de = bc + 190
	;     break

	ld a, b
	and a
	jr nz, .no
	ld a, c
	cp 10
	jr nc, .no

	ld hl, 190
	add hl, bc
	ld d, h
	ld e, l
	jr .done

.no

	ld hl, MagicarpeLengths
	ld a, 2
	ld [wTempByteValue], a

.read
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	call .BCLessThanDE
	jr nc, .next

	; c = (bc - de) / [hl]
	call .BCMinusDE
	ld a, b
	ldh [hDividend + 0], a
	ld a, c
	ldh [hDividend + 1], a
	ld a, [hl]
	ldh [hDivisor], a
	ld b, 2
	call Divide
	ldh a, [hQuotient + 3]
	ld c, a

	; de = c + 100 × (2 + i)
	xor a
	ldh [hMultiplicand + 0], a
	ldh [hMultiplicand + 1], a
	ld a, 100
	ldh [hMultiplicand + 2], a
	ld a, [wTempByteValue]
	ldh [hMultiplier], a
	call Multiply
	ld b, 0
	ldh a, [hProduct + 3]
	add c
	ld e, a
	ldh a, [hProduct + 2]
	adc b
	ld d, a
	jr .done

.next
	inc hl ; align to next triplet
	ld a, [wTempByteValue]
	inc a
	ld [wTempByteValue], a
	cp 16
	jr c, .read

	call .BCMinusDE
	ld hl, 1600
	add hl, bc
	ld d, h
	ld e, l

.done
	ld hl, wMagicarpeLength
	ld [hl], d
	inc hl
	ld [hl], e
	ret

.BCLessThanDE:
; BUG: Magicarpe lengths can be miscalculated (see docs/bugs_and_glitches.md)
	ld a, b
	cp d
	ret c
	ret nc
	ld a, c
	cp e
	ret

.BCMinusDE:
; bc -= de
	ld a, c
	sub e
	ld c, a
	ld a, b
	sbc d
	ld b, a
	ret

INCLUDE "data/events/magicarpe_lengths.asm"

MagicarpeHouseSign:
	ld a, [wBestMagicarpeLengthFeet]
	ld [wMagicarpeLength], a
	ld a, [wBestMagicarpeLengthInches]
	ld [wMagicarpeLength + 1], a
	call PrintMagicarpeLength
	ld hl, .KarpGuruRecordText
	call PrintText
	ret

.KarpGuruRecordText:
	text_far _KarpGuruRecordText
	text_end