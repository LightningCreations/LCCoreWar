;redcode-94
;name           Split-stone (WIP)
;author         Ray Redondo
;strategy       1. Scan for the enemy (scan)
;strategy       2. BOMB them repeatedly (paper)
;strategy       3. Kill the rest of the code (stone)
;strategy       4. If we haven't won, loop.

;assert CORESIZE == 8000

        ORG SCANNER

BOMB1   SPL 0, -4
BOMB2   SPL -1, 1
BOMB3   DAT 0, 0

SCANNER CMP -4, @BOMB1
        JMP CHECKER
        SUB #9, BOMB1
        JMP SCANNER

CHECKER SLT #0, BOMB1
        ADD #8000, BOMB1
        SLT #32, BOMB1
        JMP -5

BOMBER  MOV BOMB3, <BOMB1
        MOV BOMB2, <BOMB1
        MOV BOMB1, <BOMB1
        MOV.B BOMB1, BOMB2

KILLER  SNE 8, <BOMB1
        JMP KILLER2
        MOV BOMB3, @BOMB1
        JMP KILLER

KILLER2 SNE 4, @BOMB2
        JMP SCANNER
        MOV BOMB3, >BOMB2
        JMP KILLER2

