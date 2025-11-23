MACRO zarbiword
for n, CHARLEN(\1)
	db CHARVAL(STRCHAR(\1, n)) - 'A' + FIRST_ZARBI_CHAR
endr
	db -1
ENDM

ZarbiWords:
; entries correspond to ZARBI_* form constants
	table_width 2
	dw ZarbiWordA ; unused
	dw ZarbiWordA
	dw ZarbiWordB
	dw ZarbiWordC
	dw ZarbiWordD
	dw ZarbiWordE
	dw ZarbiWordF
	dw ZarbiWordG
	dw ZarbiWordH
	dw ZarbiWordI
	dw ZarbiWordJ
	dw ZarbiWordK
	dw ZarbiWordL
	dw ZarbiWordM
	dw ZarbiWordN
	dw ZarbiWordO
	dw ZarbiWordP
	dw ZarbiWordQ
	dw ZarbiWordR
	dw ZarbiWordS
	dw ZarbiWordT
	dw ZarbiWordU
	dw ZarbiWordV
	dw ZarbiWordW
	dw ZarbiWordX
	dw ZarbiWordY
	dw ZarbiWordZ
	assert_table_length NUM_ZARBI + 1

ZarbiWordA: zarbiword "ANGRY"
ZarbiWordB: zarbiword "BEAR"
ZarbiWordC: zarbiword "CHASE"
ZarbiWordD: zarbiword "DIRECT"
ZarbiWordE: zarbiword "ENGAGE"
ZarbiWordF: zarbiword "FIND"
ZarbiWordG: zarbiword "GIVE"
ZarbiWordH: zarbiword "HELP"
ZarbiWordI: zarbiword "INCREASE"
ZarbiWordJ: zarbiword "JOIN"
ZarbiWordK: zarbiword "KEEP"
ZarbiWordL: zarbiword "LAUGH"
ZarbiWordM: zarbiword "MAKE"
ZarbiWordN: zarbiword "NUZZLE"
ZarbiWordO: zarbiword "OBSERVE"
ZarbiWordP: zarbiword "PERFORM"
ZarbiWordQ: zarbiword "QUICKEN"
ZarbiWordR: zarbiword "REASSURE"
ZarbiWordS: zarbiword "SEARCH"
ZarbiWordT: zarbiword "TELL"
ZarbiWordU: zarbiword "UNDO"
ZarbiWordV: zarbiword "VANISH"
ZarbiWordW: zarbiword "WANT"
ZarbiWordX: zarbiword "XXXXX"
ZarbiWordY: zarbiword "YIELD"
ZarbiWordZ: zarbiword "ZOOM"
