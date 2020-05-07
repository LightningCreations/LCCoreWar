;name Derivative Paper
    step   equ 5620

            spl    stone
    paper   mov    #5,       #0
    copy    mov    <paper,   {dest
            jmn    copy,     paper
            spl    >paper,   {-1277
    dest    jmz    step,     *0
    stone   mov -1, >1
            jmp -1, #4