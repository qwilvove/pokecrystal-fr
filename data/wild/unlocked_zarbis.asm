MACRO zarbi_set
rept _NARG
	db ZARBI_\1
	shift
endr
	db -1
ENDM

UnlockedZarbiLetterSets:
; entries correspond to UNLOCKED_ZARBIS_* constants
	table_width 2
	dw .Set_A_K ; UNLOCKED_ZARBIS_A_TO_K_F
	dw .Set_L_R ; UNLOCKED_ZARBIS_L_TO_R_F
	dw .Set_S_W ; UNLOCKED_ZARBIS_S_TO_W_F
	dw .Set_X_Z ; UNLOCKED_ZARBIS_X_TO_Z_F
	assert_table_length NUM_UNLOCKED_ZARBI_SETS

.Set_A_K:
	zarbi_set A, B, C, D, E, F, G, H, I, J, K
.Set_L_R:
	zarbi_set L, M, N, O, P, Q, R
.Set_S_W:
	zarbi_set S, T, U, V, W
.Set_X_Z:
	zarbi_set X, Y, Z
