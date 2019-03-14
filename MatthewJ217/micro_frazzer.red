;redcode-94
;name Micro frazzer
;author MatthewJ217
;strategy Be really small and simply decrement the B-field of every single address, including it's own. Hopefully this will cause the enemy program to destroy itself.
ORG	0
NOP.B	<0,	<0
JMP.B	$-1,	$0
