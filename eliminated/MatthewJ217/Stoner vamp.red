;redcode-94
;name Stoner vamp
;author MatthewJ217
;comment This runs a lot better with more warriors than one. This is just to kill off simpler programs.

ORG 0

;the actual vamp
START MOV.I BOMB, >BOMB
SLT #7985, BOMB 
JMP START, {BOMB
SUB.A #25, BOMB
ADD.AB #24, BOMB
JMP START
BOMB JMP -ENDPRGM, #ENDPRGM+1 ;trust me on this

;enemies run this once captured
EXEC JMP.B	$2,	$0
DATA DAT.F	#0,	#7
MOV.I	$DATA,	>DATA
SNE.B	@-11,	#0
JMP.B	$-2,	$0
ADD.AB	#-START+ENDPRGM+2,	$DATA
MOV.I	$2,	$START-1
ENDPRGM DAT 0, 0
