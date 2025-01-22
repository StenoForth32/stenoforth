\ stenoforth32

MODULE: fsynonyms
m: a FABS ;
m: b FLOG2 ;
m: c FCOS ;
m: d FDUP ;
m: e ELSE ;
m: f DS>F ;
m: g FLOG ;
m: h HERE ;
m: i F1+ ;
m: j 1e F- ;
m: k FACOS ;
m: l FLN ;
m: m FMIN ;
m: n FNEGATE ;
m: o FDEPTH ;
m: p F**2 ;
m: q FSQRT ;
m: r FASIN ;
m: s FSIN ;
m: t THEN ;
m: u FATAN ;
\ v w
m: x FDROP ;
m: y $ -4 @P=A A^A $ -4 Pa ; \ 0
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
m: Y $ -4 @P=A $ 1 A=# $ -4 Pa ;  \ 1
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

: NOTFOUND u! a! a C@ '{' = u 1 > AND 0= IF a u NOTFOUND EXIT THEN
` fs| a 1+ u 1- aDO I C@ 'v' <> IF I 1 EVALUATE 1 ELSE I 2 EVALUATE 2 THEN +LOOP ` |fs ;

MODULE: fvaluenames
m: a a, ; m: d d, ; m: e e, ; m: f f, ; m: g g, ; m: h h, ; m: i i, ; m: j j, ;
m: k k, ; m: l l, ; m: m m, ; m: n n, ; m: o o, ; m: p p, ; m: q q, ; m: r r, ; m: t t, ;
m: u u, ; m: v v, ; m: x x, ; m: y y, ; m: z z, ;
m: A A, ; m: D D, ; m: E E, ; m: F F, ; m: G G, ; m: H H, ;
m: K K, ; m: L L, ; m: M M, ; m: N N, ; m: O O, ; m: P P, ; m: Q Q, ; m: R R, ; m: T T, ;
m: U U, ; m: V V, ; m: X X, ; m: Y Y, ; m: Z Z, ;
m: 1 Г, ; m: 2 Д, ; m: 3 Е, ; m: 4 Ё, ; m: 5 Ж, ; m: 6 З, ; m: 7 И, ; m: 8 Й, ; m: 9 К, ;
m: v1 Л, ; m: v2 М, ; m: v3 Н, ; m: v4 О, ; m: v5 П, ; m: v6 Р, ; m: v7 С, ; m: v8 Т, ; m: v9 У, ;

EXPORT
m: vf| {{ fvaluenames ;
m: |vf }} ;
;MODULE


: NOTFOUND u! a! a C@ ',' = u 1 > AND 0= IF a u NOTFOUND EXIT THEN
  ` vf| a 1+ a 1+ u + 2- DO I 1- C@ 'v' <> IF I 1 EVALUATE -1 ELSE I 1- 2 EVALUATE -2 THEN +LOOP ` |vf ;

MODULE: mfvaluenames
m: a a; ; m: b b; ; m: c c; ; m: d d; ; m: e e; ; m: f f; ; m: g g; ; m: h h; ; m: i i; ; m: j j; ;
m: k k; ; m: l l; ; m: m m; ; m: n n; ; m: o o; ; m: p p; ; m: q q; ; m: r r; ; m: s s; ; m: t t; ;
m: u u; ; m: v v; ; m: w w; ; m: x x; ; m: y y; ; m: z z; ;
m: A A; ; m: B B; ; m: C C; ; m: D D, ; m: E E, ; m: F F, ; m: G G; ; m: H H; ;
m: K K; ; m: L L; ; m: M M; ; m: N N; ; m: O O; ; m: P P; ; m: Q Q; ; m: R R; ; m: S S; ; m: T T; ;
m: 1 Г; ; m: 2 Д; ; m: 3 Е; ; m: 4 Ё; ; m: 5 Ж; ; m: 6 З; ; m: 7 И; ; m: 8 Й; ; m: 9 К; ;
m: v1 Л; ; m: v2 М; ; m: v3 Н; ; m: v4 О; ; m: v5 П; ; m: v6 Р; ; m: v7 С; ; m: v8 Т; ; m: v9 У; ;

EXPORT
m: mvf| {{ mfvaluenames ;
m: |mvf }} ;
;MODULE

: NOTFOUND u! a! a C@ ';' = u 1 > AND 0= IF a u NOTFOUND EXIT THEN
  ` mvf| a 1+ a 1+ u + 2- DO I 1- C@ 'v' <> IF I 1 EVALUATE -1 ELSE I 1- 2 EVALUATE -2 THEN +LOOP ` |mvf ;
