;redcode-94
;name Rock paper
;author MatthewJ217
ORG	0
JMP.B	$2,	$0
DAT.F	$401,	$0
MOV.I	>-1,	}-1
SEQ.B	$-2,	#8
JMP.B	$-2,	$0
SPL.B	$398,	$0
SUB.F	*-5,	$8
SUB.F	@-6,	$8
JMP.B	$-4,	$0