\ stenoforth32

: SEET xt! 0. tics!d 0 ns! 0. mcs! ms! 0. t1!d 0. t2!d
DAC=TSCP DUP A=D to t1 A=C DUP to ns
\ DUP DROP DUP DROP DUP DROP
DAC=TSCP DUP A=D to t2 A=C DUP to ms
xt WordByAddr CR TYPE CR
DAC=TSCP DUP A=D 2DUP to t1 A=C DUP to ns
xt :A
DAC=TSCP DUP A=D to t2 A=C DUP to ms
t2 t1 D- to tics
." p1=" ns . ." p2=" ms . CR
tics 10. D* 36. D/ DROP to ns
ns      1000 / to mcs
mcs     1000 / to ms
." dT1 = "
tics            D. ." tics "
ms               . ." msec "
mcs ms  1000 * - . ." mcsec "
ns mcs  1000 * - . ." nsec " CR
xt :A xt :A xt :A xt :A
DAC=TSCP DUP A=D to t1 A=C DUP to ns
xt :A
DAC=TSCP DUP A=D to t2 A=C DUP to ms
t2 t1 D- to tics
." p1=" ns . ." p2=" ms . CR
tics 10. D* 36. D/ DROP to ns
ns      1000 / to mcs
mcs     1000 / to ms
." dTc = "
tics            D. ." tics "
ms               . ." msec "
mcs ms  1000 * - . ." mcsec "
ns mcs  1000 * - . ." nsec " CR
CR
S0 @ SP!
;
: sseet ;
