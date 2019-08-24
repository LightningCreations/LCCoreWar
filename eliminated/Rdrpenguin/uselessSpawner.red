;redcode-94
;name Useless Spawner
;author Rdrpenguin
        org init
        dat #8, #324 ; A: distance in paper
                         ; B: distance from start
init:   mov *-1, @-1
        sub #1, -2
        sub.a #1, -3
        seq.ab -4, #7
        jmp -4
        add #1, -6
        jmp @-7
paper:  jmp 0