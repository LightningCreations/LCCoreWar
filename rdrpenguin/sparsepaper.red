;redcode-94
;name	Sparse Paper
;author	Ray Redondo
;strategy	copy program to psuedorandom places in memory and split
;assert CORESIZE == 8000
	ORG	START
	DAT	-1, 30
START	MOV.I	}-1, >-1
	SEQ.A	#8, -2
	JMP	-2
	SUB.A	#8, -4
	SUB.AB	#7, -5
	SPL	>-6
	SUB.AB	#10, -7
	JMP	-7
	FOR 23
	END
	ROF
