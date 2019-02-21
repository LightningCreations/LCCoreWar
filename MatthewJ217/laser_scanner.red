;redcode-94
;name Laser scanner
;author MatthewJ217
;strategy Scan, then stone like crazy
ORG	0
SCAN	SUB.AB	#15,	$DATA	;Scan, beginning of program
DETECT	SNE.B	<1,	#0	;Is it code? (and increment)
DATA	JMP.B	$-2,	$0	;If nothing, start over (also holds number)

SEESELF	ADD	#SCAN,	@DATA
	SLT.B	@-1,	#20	;Else, is it seeing itself? (Too close?)
JUMP	JMP.B	STONE,	#0	;If no, jump to stoning
	;Else, avoid itself

AVOID	SUB.AB	#15,	$DATA	;Increment over itself quickly
	SNE.B	@JUMP, #3
	SUB.AB	#6,	@JUMP	;Decrease the increment size
	JMP.B	SCAN,	#0	;Start scanning again

STONE	MOV.I	$10,	@DATA	;Grab a (hopefully) DAT and put it onto the enemy
	JMP.B	DETECT,	#0	;Check again (and increment)
