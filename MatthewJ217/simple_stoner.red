;redcode-94
;name Simple stoner
;author MatthewJ217
;strategy This thing simply scans for the emeny at 1/3 block per frame, and it avoids itself provided it isn't hijacked.
JMP.B	$2,	$0
DAT.F	#0,	#7
MOV.I	$-1,	>-1
SNE.B	@-3,	#0
JMP.B	$-2,	$0
ADD.AB	#10,	$-4
MOV.I	$1,	$-6
JMP.B	$-5,	$0
