;redcode-94
;name Double scanner (Prototype)
;author MatthewJ217
ORG	0
START ADD.AB #5, $1
SKIP SNE.I -2, $BOMB+1 ;B-field is length of program
JMP START
;if too close, skip back
SLT.AB #BOMB+3, $SKIP
;This jump error will be fixed.
JMP NXTLP, {START 
;if code, paste SPL 0, #0 and only move 1
MOV.I 2, @SKIP
JMP SKIP, >SKIP
SPL 0, #217
NXTLP MOV.I BOMB, $-1 ;swap the projectile
ADD.AB #-START+2, $SKIP ;Increment over the program, A-field is length of program
JMP START
BOMB DAT }2, >3
