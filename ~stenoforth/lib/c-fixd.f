\ stenoforth32

MODULE: dsynonyms
m: a DABS ;
m: b W@ ;
\ c
m: d 2DUP ;
m: e ELSE ;
m: f F>D ;
\ g
m: h HERE ;
m: i 1+! ;
m: j 1-! ;
\ k
m: l DLSHIFT ;
\ m
m: n DNEGATE ;
\ o p q
m: r DRSHIFT ;
m: s SPACE ;
m: t THEN ;
\ u v
m: w W! ;
m: x 2DROP ;
m: y 0. ;
m: z D0<> ;

m: A ALLOCATE THROW ;
m: B .0b ;
m: D ?DO ;
m: F FREE THROW ;
m: H .0h ;
m: I +! ;
m: J -! ;
m: R RESIZE THROW ;
m: G aDO ;
m: L LOOP ;
m: N +LOOP ;
m: O .0 ;
m: T TYPE ;
m: V MOVE ;
m: Y 1. ;
m: Z D0= ;

m: + D+ ;
m: - D- ;
m: * D* ;
m: / D/ ;
m: % DMOD ;
m: . D. ;
m: @ 2@ ;
m: ! 2! ;
m: < D< ;
m: > D> ;
m: = D= ;
m: # D<> ;
m: & DAND ;
m: | DOR ;
m: ^ DXOR ;
m: ~ DINVERT ;
m: \ CR ;
m: ? IF ;
m: _ .BL ;
m: : to ;
m: ; EXIT ;

m: 1 ╤Б ; m: 2 ╤В ; m: 3 ╤Г ; m: 4 ╤Д ; m: 5 ╤Е ; m: 6 ╤Ж ; m: 7 ╤З ; m: 8 ╤И ; m: 9 ╤Й ;
m: v1 ╤К ; m: v2 ╤Л ; m: v3 ╤М ; m: v4 ╤Н ; m: v5 ╤О ; m: v6 ╤П ; m: v7 ╨Р ; m: v8 ╨С ; m: v9 ╨Т ;
EXPORT
m: sd| {{ dsynonyms ;
m: |sd }} ;
;MODULE

: NOTFOUND u! a! a C@ '"' = u 1 > AND 0= IF a u NOTFOUND EXIT THEN
` sd| a 1+ u 1- aDO I C@ 'v' <> IF I 1 EVALUATE 1 ELSE I 2 EVALUATE 2 THEN +LOOP ` |sd ;

MODULE: dvaluenames
m: a a!d ; m: b b!d ; m: c c!d ; m: d d!d ; m: e e!d ; m: f f!d ; m: g g!d ; m: h h!d ; m: i i!d ; m: j j!d ;
m: k k!d ; m: l l!d ; m: m m!d ; m: n n!d ; m: o o!d ; m: p p!d ; m: q q!d ; m: r r!d ; m: s s!d ; m: t t!d ;
m: u u!d ; m: v v!d ; m: w w!d ; m: x x!d ; m: y y!d ; m: z z!d ;
m: A A!d ; m: B B!d ; m: C C!d ; m: D D!d ; m: E E!d ; m: F F!d ; m: G G!d ; m: H H!d ;
m: K K!d ; m: L L!d ; m: M M!d ; m: N N!d ; m: O O!d ; m: P P!d ; m: Q Q!d ; m: R R!d ; m: S S!d ; m: T T!d ;
m: U U!d ; m: V V!d ; m: W W!d ; m: X X!d ; m: Y Y!d ; m: Z Z!d ;
m: 1 ╤Б!d ; m: 2 ╤В!d ; m: 3 ╤Г!d ; m: 4 ╤Д!d ; m: 5 ╤Е!d ; m: 6 ╤Ж!d ; m: 7 ╤З!d ; m: 8 ╤И!d ; m: 9 ╤Й!d ;
m: v1 ╤К!d ; m: v2 ╤Л!d ; m: v3 ╤М!d ; m: v4 ╤Н!d ; m: v5 ╤О!d ; m: v6 ╤П!d ; m: v7 ╨Р!d ; m: v8 ╨С!d ; m: v9 ╨Т!d ;
EXPORT
m: vd| {{ dvaluenames ;
m: |vd }} ;
;MODULE

: NOTFOUND u! a! a W@ 'd!' = u 2 > AND 0= IF a u NOTFOUND EXIT THEN
  ` vd| a 2+ a 2+ u + 3 - DO I 1- C@ 'v' <> IF I 1 EVALUATE -1 ELSE I 1- 2 EVALUATE -2 THEN +LOOP ` |vd ;
