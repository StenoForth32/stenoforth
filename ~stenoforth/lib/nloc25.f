\ stenoforth32
\                            name             xt          typ
\ устройство словаря: byte-0 bytes-lex byte-0 addr byte-0 byte-typ byte-0

\ локальное именование

CREATE lcode 0x100000 ALLOT lcode VALUE dpl
CREATE ldate 0x100000 ALLOT ldate VALUE ldhere
VARIABLE XHERE  VARIABLE xdpl

0x1000 CONSTANT lenlvoc
USER-CREATE alvoc  lenlvoc USER-ALLOT  0 alvoc C!
USER lhere
USER axtloc
USER dtyp  0 dtyp !   \ тип переменной
USER locxt 0 locxt !
USER iol   0 iol !

USER-CREATE udata  0x2500 USER-ALLOT
udata ' udata 5 + @ DUP VALUE udhere - VALUE basa

m: usn! [ 0x8789 W, udhere , ] ;
m: usn@ [ 0x878B W, udhere , ] ;
m: adr@ [ 0xC78B W, udhere 0xC081 W, , ] ;  \ mov eax edi  add eax udhere

\ -- c-addr u
: lvoc   alvoc lenlvoc ;  lvoc ERASE 1 lhere !
\ c-addr u -- axtloc \ здесь u на 1 или 2 символа меньше чем исходное имя с суффиксом типа в 1 или 2 символа
: lname, { a u | axt -- axtloc }
  lhere @ TO axt
  a axt u MOVE   0 axt u + C!
  axt u + 1+ DUP DUP lhere ! axtloc ! \ axtloc
;
: L{  dpl xdpl ! DP @ XHERE ! dpl DP ! ;
: }L  dpl DP @ xdpl @ - + TO dpl XHERE @ DP ! ;

: init-lvoc  lvoc ERASE  alvoc lhere ! ;
\ c-addr u --
: headl  lname, dpl SWAP ! lhere @ 7 + lhere ! ;
\ c-addr u s  -- c-addr u

m: nf1-exit \ -ROT 2DUP + 1- C@ -ROT 2SWAP <> IF NOTFOUND EXIT THEN
a u + 1- C@ s <>  IF a u NOTFOUND EXIT THEN a u
a u + 1- C@
CASE
')' OF   0 ENDOF \ variable-addres  4 or 8 bytes
'\' OF   1 ENDOF \ value-data fix-point
':' OF   2 ENDOF \ value-data-multi-threads fix-point
'$' OF   4 ENDOF \ value-data float-point
';' OF   5 ENDOF \ value-data-multi-threads float-point
'"' OF   6 ENDOF \ evaluate strings
'(' OF   7 ENDOF \ code
'[' OF   8 ENDOF \ macros
'{' OF   9 ENDOF \ closures
']' OF  10 ENDOF \ arrays-data fix-point
'}' OF  11 ENDOF \ arrays-data float-point
ENDCASE
lhere @ u + 5 + DUP dtyp ! C! 0 lhere @ u + 6 + C!
;

\ c-addr u ss -- c-addr u
m: nf2-exit a u a u + 2- W@ s <> IF NOTFOUND EXIT THEN
\ -ROT 2DUP + 2- W@ -ROT 2SWAP <> IF NOTFOUND EXIT THEN
a u + 2- W@
CASE
'!d' OF 3 ENDOF
ENDCASE
lhere @ u + 4 + DUP dtyp ! C! 0 lhere @ u + 5 + C!
;

: +: : ;          \ расширение области видимости словаря предыдущих определений для следующего определения
: : init-lvoc : ; \ стирание словаря предыдущих определений по следующему определению через ':'

: NOTFOUND ( a u -- ) '(' { a u s } nf1-exit 1- headl L{ ;
: ) ( -- )  RET, }L ; IMMEDIATE                                                         \ name(  ) code
: NOTFOUND ( a u -- ) '"' { a u s } nf1-exit 1- headl L{ LOAD-TEXT RET, }L ;            \ name"  " string
: NOTFOUND ( a u -- ) '[' { a u s } nf1-exit 1- headl L{ LOAD-TEXT ` EVALUATE RET, }L ; \ name[  ] macros

\ замыкания                                                                             \ closure
: NOTFOUND ( a u -- ) '{' { a u s } nf1-exit 1- headl L{ LOAD-TEXT ` xts RET, }L ;      \ name{  текст замыкания }
: x) ( -- )  RET, }L axtloc @ @ LIT, ; IMMEDIATE                                        \ name( ... x) выдает xt
\ поиск в словаре определения                                                                                        \ name дальше не используется
: lsearch { a u a1 u1 \ a2 u2 fl -- a u 0|1 }
   0 TO fl BEGIN a u a1 u1 SEARCH >R TO u2 TO a2
                 R> a2 u1 + C@ 0= a2 1- C@ 0= AND AND
                 IF   1 TO fl a2 u1 TRUE
                 ELSE a2 u1 + 1+ TO a u2 u1 - 1- TO u
                      u u1 < IF 1 TO fl a u FALSE THEN
                 THEN
       fl UNTIL
;
: l' ( l' name -- xt ) TRUE locxt ! ; IMMEDIATE \ дает xt для name

USER st-wr  0 st-wr !
: -> 1 st-wr ! ; IMMEDIATE

: NOTFOUND \ a u --  компиляция из локального словаря в глобальный словарь
  OVER     \ a u a
  C@       \ 1-й символ имени
  '`' = IF 1 /STRING TRUE locxt ! THEN \ a u
  lvoc     \ a u av uv
  2OVER    \ a u av uv a u
  lsearch  \ a u a' u fl
  0= lhere @ 1 = OR IF 2DROP NOTFOUND EXIT THEN \ a u a' u
  2SWAP    \  a' u a u
  NIP      \  a' u u
  NIP      \  a' u
  + 1+ DUP 5 + C@ { typ }
  @ st-wr @
  IF
  typ 1 = IF 12 ELSE   \ 1      12
  typ 2 = IF 13 ELSE   \ 4
  typ 3 = IF 20 ELSE   \ 2
  typ 4 = IF 25 ELSE   \ 3
  typ 5 = IF 13 ELSE   \ 5
  0 THEN THEN THEN THEN THEN
  +
  THEN
  locxt @ 0<>
  IF   0 locxt ! LIT,
  ELSE typ 1 =
       IF DP @ st-wr @
          IF   12   \ 12
          ELSE 11   \ 11
          THEN
          MOVE DP @ st-wr @
          IF   12   \ 12
          ELSE 11   \ 11
          THEN + DP !
       ELSE COMPILE,
       THEN
  THEN 0 st-wr !
;
\ переменные однопоточные
: NOTFOUND ( a u --  ) \ 2variable variable    name)
  ')' { a u s } nf1-exit 1- headl  L{ ldhere LIT, RET, ldhere 2 CELLS + TO ldhere }L ;
: NOTFOUND ( a u --  ) \ value   name\
  '\' { a u s } nf1-exit 1- headl ldhere LIT, ` ! L{ ldhere LIT, ` @ RET, ldhere LIT, ` ! RET, ldhere 1 CELLS + TO ldhere }L
;
: NOTFOUND ( a u --  ) \ 2value  name!d
  '!d' { a u s } nf2-exit 2- headl ldhere LIT, ` 2! L{ ldhere LIT, ` 2@ RET, ldhere LIT, ` 2! RET, ldhere 2 CELLS + TO ldhere }L
;
: NOTFOUND ( a u --  ) \ fvalue  name,
  '$' { a u s } nf1-exit 1- headl ` FLOAT>DATA ldhere LIT, ` 2! ( 4 ltyp !)
  L{ ldhere LIT, ` 2@ ` DATA>FLOAT RET, ` FLOAT>DATA ldhere LIT, ` 2! RET, ldhere 2 CELLS + TO ldhere }L
;
\ переменные многопоточные
: NOTFOUND ( a u --  ) \ value   name:
  ':' { a u s } nf1-exit 1- headl ` usn! ` DROP \ 2 ltyp !
  L{ ` DUP  ` usn@ RET,
     ` usn! ` DROP RET,
     udhere 1 CELLS + TO udhere }L
;
: NOTFOUND ( a u --  ) \ value   name;
  ';' { a u s } nf1-exit 1- headl  ` FLOAT>DATA32 ` usn! ` DROP \ 5 ltyp !
  L{ ` DUP ` usn@ ` DATA>FLOAT32  RET,
     ` FLOAT>DATA32 ` usn! ` DROP RET,
     udhere 1 CELLS + TO udhere }L
;
\ массивы однопоточные
: NOTFOUND ( a u --  ) \   [ 20 ] arr]
  ']' { a u s } nf1-exit 1- headl
  L{ ldhere LIT, RET, ldhere + TO ldhere }L
;
\ массивы многопоточные
: NOTFOUND ( a u --  ) \   [ 20 ] arr]u
  '}' { a u s } nf1-exit 1- headl
  L{ ` DUP ` adr@ RET,
  udhere + TO udhere }L
;
\ исполнение из форта или если там нет, то из лок. словаря
: NOTFOUND ( c-addr u -- ) { a u | [ 16 ] arr }
 a u + 1- C@ '`' = u 1 > AND 0= IF a u NOTFOUND EXIT THEN
 a u 1- SFIND IF EXECUTE \ ищем в текущем глобальном словаре
              ELSE lvoc 2SWAP lsearch  \ ищем в локальном словаре
                   IF + 1+ @ EXECUTE
                   ELSE TYPE SPACE ." not found " CR
                   THEN
              THEN
;
\ распознавание чисел с плавающей точкой
: NOTFOUND  ( c-addr u -- ) { a u | sq sz pt [ 20 ] an }
  a u OVER + SWAP ?DO I C@ '0' ':' WITHIN IF sq 1+ TO sq THEN
  I C@ ',' = IF I a - TO pt sz 1+ TO sz THEN LOOP
  a C@ '-' = IF sq u 2- = ELSE sq u 1- = THEN sz 1 = AND  0=
  IF a u NOTFOUND EXIT THEN
  a an u 2+  MOVE 'e' an u + C! '.' an pt + C! an u 1+ EVALUATE
;
I: | NextWord 2DUP + 1- C@ '|' <> IF RECURSE EVALUATE ELSE 2DROP THEN ;

: .s CR DEPTH .SN CR S0 @ SP! ;
: .sd DEPTH 0 DO I ROLL LOOP DEPTH 0 DO SWAP D. 2 +LOOP CR ;





                 
