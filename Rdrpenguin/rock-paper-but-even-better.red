;redcode-94
;name Slightly faster rock paper
;author MatthewJ217 arr. Rdrpenguin
ORG	1
DAT.F	$403,	$0
MOV.I	>-1,	}-1
SEQ.B	$-2,	#8
JMP.B	$-2,	$0
SPL.B	$400,	$0
SUB.F	*-5,	$8
SUB.F	@-6,	$8
JMP.B	$-4,	$0