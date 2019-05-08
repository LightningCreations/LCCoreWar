;name Blur Scanner
step   equ 4884
wptr    mov.b  scan,       #0
scan    add    #step,      #step
gate    mov    *bomb,      >wptr
jmz.f  scan,       @scan
jmn    wptr,       *wptr
bomb    spl    0,          0
clear   mov    dbmb,       >gate
djn.f  clear,      >gate
dbmb    dat    <2667,      2-gate