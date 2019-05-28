;name Self-Vamping Vampire
    step   equ -715           ; mod 5

    inc     spl    #step,     <-step
    vampire mov    fang,      @fang   ; fang dropped here
            sub    inc,       fang
            djn.f  vampire,   *fang

            for    5
            dat    0,0
            rof

    trap    mov    bomb+1,    <vampire-9
            spl    trap
            jmp    trap+1
    bomb    dat    <5334,     <2667

            for    3
            dat    0,0
            rof

    fang    jmp    trap-vampire-step,<vampire+step
    