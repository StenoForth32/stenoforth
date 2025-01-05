\ stenoforth32

MODULE: fsynonyms
m: a FABS ;
m: b FLOG2 ;
m: c FCOS ;
m: d FDUP ;
m: e ELSE ;
m: f DS>F ;
m: g rnd ;
m: h HERE ;
\ i j k l
m: m FMIN ;
m: n FNEGATE ;
m: o FDEPTH ;
m: p F**2 ;
m: q FSQRT ;
m: r randomize ;
m: s FSIN ;
m: t THEN ;
\  u v w
m: x FDROP ;
m: y $ -4 @P=A A^A $ -4 Pa ;
m: z F0= INVERT ;    \ F0<>

m: A AGAIN ;
m: B BEGIN ;
m: C CASE ;
m: D ?DO ;
m: E ENDCASE ;
m: F D>F ;
m: G aDO ;
\ m: H ;
m: L LOOP ;
m: M FMAX ;
m: N +LOOP ;
\ m: O FDEPTH ;
m: P FPI ;
m: Q LEAVE ;
m: R REPEAT ;
m: S F>DS ;
m: T FTAN ;
m: U UNTIL ;
m: W WHILE ;
m: X EXP ;
m: Y $ -4 @P=A $ 1 A=# $ -4 Pa ;
m: Z F0= ;

m: @ F@ ;
m: ! F! ;
m: + F+ ;
m: - F- ;
m: * F* ;
m: / F/ ;
m: = F= ;
m: # F= INVERT ;
m: ? IF ;
m: < F< ;
m: > FOVER FOVER F< F= OR 0= ;
m: ~ F~ ;
m: ^ F** ;
m: . F. ;
m: : to ;
m: ; EXIT ;
m: 1 Г ; m: 2 Д ; m: 3 Е ; m: 4 Ё ; m: 5 Ж ; m: 6 З ; m: 7 И ; m: 8 Й ; m: 9 К ;
m: v1 Л ; m: v2 М ; m: v3 Н ; m: v4 О ; m: v5 П ; m: v6 Р ; m: v7 С ; m: v8 Т ; m: v9 У ;

EXPORT
m: fs| {{ fsynonyms ;
m: |fs }} ;
;MODULE

\ : NOTFOUND u! a! a C@ '{' = u 1 > AND 0= IF a u NOTFOUND EXIT THEN
\ ` fs| a 1+ u 1- aDO I 1 EVALUATE LOOP ` |fs ;

: NOTFOUND u! a! a C@ '{' = u 1 > AND 0= IF a u NOTFOUND EXIT THEN
` fs| a 1+ u 1- aDO I C@ 'v' <> IF I 1 EVALUATE 1 ELSE I 2 EVALUATE 2 THEN +LOOP ` |fs ;

MODULE: fvaluenames
m: a a, ; m: b b, ; m: c c, ; m: d d, ; m: e e, ; m: f f, ; m: g g, ; m: h h, ; m: i i, ; m: j j, ;
m: k k, ; m: l l, ; m: m m, ; m: n n, ; m: o o, ; m: p p, ; m: q q, ; m: r r, ; m: s s, ; m: t t, ;
m: u u, ; m: v v, ; m: w w, ; m: x x, ; m: y y, ; m: z z, ;
m: G G, ; m: H H, ;
m: K K, ; m: L L, ; m: M M, ; m: N N, ; m: O O, ; m: P P, ; m: Q Q, ; m: R R, ; m: S S, ; m: T T, ;
m: U U, ; m: V V, ; m: W W, ; m: X X, ; m: Y Y, ; m: Z Z, ;
m: 1 Г, ; m: 2 Д, ; m: 3 Е, ; m: 4 Ё, ; m: 5 Ж, ; m: 6 З, ; m: 7 И, ; m: 8 Й, ; m: 9 К, ;
m: v1 Л, ; m: v2 М, ; m: v3 Н, ; m: v4 О, ; m: v5 П, ; m: v6 Р, ; m: v7 С, ; m: v8 Т, ; m: v9 У, ;

EXPORT
m: vf| {{ fvaluenames ;
m: |vf }} ;
;MODULE

\ : NOTFOUND u! a! a C@ ',' = u 1 > AND 0= IF a u NOTFOUND EXIT THEN
\   ` vf| a 1+ a 1+ u + 2- DO I 1 EVALUATE -1 +LOOP ` |vf ;

: NOTFOUND u! a! a C@ ',' = u 1 > AND 0= IF a u NOTFOUND EXIT THEN
  ` vf| a 1+ a 1+ u + 2- DO I 1- C@ 'v' <> IF I 1 EVALUATE -1 ELSE I 1- 2 EVALUATE -2 THEN +LOOP ` |vf ;

MODULE: mfvaluenames
m: a a; ; m: b b; ; m: c c; ; m: d d; ; m: e e; ; m: f f; ; m: g g; ; m: h h; ; m: i i; ; m: j j; ;
m: k k; ; m: l l; ; m: m m; ; m: n n; ; m: o o; ; m: p p; ; m: q q; ; m: r r; ; m: s s; ; m: t t; ;
m: u u; ; m: v v; ; m: w w; ; m: x x; ; m: y y; ; m: z z; ;
m: G G; ; m: H H; ;
m: K K; ; m: L L; ; m: M M; ; m: N N; ; m: O O; ; m: P P; ; m: Q Q; ; m: R R; ; m: S S; ; m: T T; ;
m: 1 Г; ; m: 2 Д; ; m: 3 Е; ; m: 4 Ё; ; m: 5 Ж; ; m: 6 З; ; m: 7 И; ; m: 8 Й; ; m: 9 К; ;
m: v1 Л; ; m: v2 М; ; m: v3 Н; ; m: v4 О; ; m: v5 П; ; m: v6 Р; ; m: v7 С; ; m: v8 Т; ; m: v9 У; ;

EXPORT
m: mvf| {{ mfvaluenames ;
m: |mvf }} ;
;MODULE

\ : NOTFOUND u! a! a C@ ';' = u 1 > AND 0= IF a u NOTFOUND EXIT THEN
\   ` mvf| a 1+ a 1+ u + 2- DO I 1 EVALUATE -1 +LOOP ` |mvf ;

: NOTFOUND u! a! a C@ ';' = u 1 > AND 0= IF a u NOTFOUND EXIT THEN
  ` mvf| a 1+ a 1+ u + 2- DO I 1- C@ 'v' <> IF I 1 EVALUATE -1 ELSE I 1- 2 EVALUATE -2 THEN +LOOP ` |mvf ;
