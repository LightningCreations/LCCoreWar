;redcode-94
;name Super scanner
;author MatthewJ217
ORG	0
START ADD.AB #6, $1
SKIP SNE.I -2, $-START+LAST ;B-field is length of program
JMP START
;if too close, skip back
SLT.AB #LAST+3, $SKIP
JMP NXTLP, {START 
SNE.AB #-1, $SKIP
JMP NXTLP, {START 
;if code, paste SPL 0, #0 and only move 1
MOV.I 2, @SKIP
JMP SKIP, >SKIP
SPL 0, #217
NXTLP MOV.I >2, $-1 ;swap the projectile
ADD.AB #-START+LAST, $SKIP ;Increment over the program, A-field is length of program
JMP START, #1
SPL 1, }-1
LAST DAT >-10, {10
