;redcode-94
;name Stall Armada
;author MatthewJ217 arr. Rdrpenguin
;strategy Spawn a bunch of warriors in. Basically a stupider version of rock paper, but a test for a program copier module that worked out nicely.

	ORG	0
	MOV	>1,	>2
	SEQ.I	-3,	3
	JMP	-2,	4000
	SPL	3999  ;above-1

	MOV	>1,	>2
	SEQ.I	-7,	3
	JMP	-2,	2000
	SPL	1999  ;above-1

	MOV	>1,	>2
	SEQ.I	-11,	3
	JMP	-2,	1000
	SPL	999  ;above-1

	MOV	>1,	>2
	SEQ.I	-15,	3
	JMP	-2,	500
	SPL	499  ;above-1

	MOV	>1,	>2
	SEQ.I	-19,	3
	JMP	-2,	250
	SPL	249  ;above-1

	MOV	>1,	>2
	SEQ.I	-24,	3
	JMP	-2,	125
	SPL	124  ;above-1

SPL 0
MOV 0, 1