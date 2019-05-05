;redcode-94
;name Paper Spawner
;author Rdrpenguin
        org init
        dat #20, #324 ; A: distance in paper
                     ; B: distance from start
init:   mov *-1, @-1
        sub #1, -2
        sub.a #1, -3
        seq.ab -4, #7
        jmp -4
        add #2, -6
        jmp @-7
locs:   dat 0, 128
start1: mov locs, @locs
        add #1, locs
        add.a #1, locs
        seq.a #20, locs
        jmp start1
start2: mov *locs, @locs
        sub #1, locs
        sub.a #1, locs
        seq.a #0, locs
        jmp start2
        add #1, locs
        spl @locs
        add #63, locs
        jmp start1
        