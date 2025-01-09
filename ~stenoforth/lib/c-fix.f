\ stenoforth32

MODULE: syn-fixpoint
m: a ABS ;                          m: A AGAIN ;                       m: # <> ;
m: b C@ ;                           m: B BEGIN ;                       m: ? IF ;
m: c EMIT ;                         m: C CASE ;                        m: _ ALLOT ;
m: d DUP ;                          m: D ?DO ;                         m: ^ XOR ;
m: e ELSE ;                         m: E ENDCASE ;                     m: & AND ;
m: f ENDOF ;                        m: F FILL ;                        m: ~ INVERT ;
m: g rnd ;                          m: G aDO ;                         m: | OR ;
m: h HERE ;                         m: H WITHIN ;                      m: % MOD ;
m: i 1+ ;                                                              m: : to ;
m: j 1- ;                                                              m: ; EXIT
m: k KEY ;                          m: K COMPARE ;
m: l LSHIFT ;                       m: L LOOP ;
m: m MIN ;                          m: M MAX ;
m: n NEGATE ;                       m: N +LOOP ;
m: o OF ;                           m: O ERASE ;
m: p DEPTH ;                        m: P randomize ;
m: q sqrt ;                         m: Q LEAVE ;
m: r RSHIFT ;                       m: R REPEAT ;
m: s I+ ;                           m: S SEARCH ;
m: t THEN ;                         m: T TRUE ;
m: u EVALUATE ;                     m: U UNTIL ;
(  v префикс переменных)            m: V MOVE ;
m: w C! ;                           m: W WHILE ;
m: x DROP ;                         m: X EXECUTE ;
m: y $ -4 @P=A A^A $ -4 Pa ;        m: Y $ -4 @P=A $ 1 A=# $ -4 Pa ;
m: z 0<> ;                          m: Z 0= ;
m: 1 а ; m: 2 б ; m: 3 в ; m: 4 г ; m: 5 д ; m: 6 е ; m: 7 ё ; m: 8 ж ; m: 9 з ;
m: v1 и ; m: v2 й ; m: v3 к ; m: v4 л ; m: v5 м ; m: v6 н ; m: v7 о ; m: v8 п ; m: v9 р ;
EXPORT
m: s| {{ syn-fixpoint ;
m: |s }} ;
;MODULE

: NOTFOUND u! a! a C@ '[' = u 1 > AND 0= IF a u NOTFOUND EXIT THEN
` s| a 1+ u 1- aDO I C@ 'v' <> IF I 1 EVALUATE 1 ELSE I 2 EVALUATE 2 THEN +LOOP ` |s ;

MODULE: valuenames
m: a a! ; m: b b! ; m: c c! ; m: d d! ; m: e e! ; m: f f! ; m: g g! ; m: h h! ; m: i i! ; m: j j! ;
m: k k! ; m: l l! ; m: m m! ; m: n n! ; m: o o! ; m: p p! ; m: q q! ; m: r r! ; m: s s! ; m: t t! ;
m: u u! ; m: v v! ; m: w w! ; m: x x! ; m: y y! ; m: z z! ;
m: A A! ; m: B B! ; m: C C! ; m: D D! ; m: E E! ; m: F F! ; m: G G! ; m: H H! ;
m: K K! ; m: L L! ; m: M M! ; m: N N! ; m: O O! ; m: P P! ; m: Q Q! ; m: R R! ; m: S S! ; m: T T! ;
m: U U! ; m: V V! ; m: W W! ; m: X X! ; m: Y Y! ; m: Z Z! ;
m: 1 а! ; m: 2 б! ; m: 3 в! ; m: 4 г! ; m: 5 д! ; m: 6 е! ; m: 7 ё! ; m: 8 ж! ; m: 9 з! ;
m: v1 и! ; m: v2 й! ; m: v3 к! ; m: v4 л! ; m: v5 м! ; m: v6 н! ; m: v7 о! ; m: v8 п! ; m: v9 р! ;
EXPORT
m: vs| {{ valuenames ;
m: |vs }} ;
;MODULE

: NOTFOUND u! a! a C@ '!' = u 1 > AND 0= IF a u NOTFOUND EXIT THEN
  ` vs| a 1+ a 1+ u + 2- DO I 1- C@ 'v' <> IF I 1 EVALUATE -1 ELSE I 1- 2 EVALUATE -2 THEN +LOOP ` |vs ;


MODULE: mvaluenames
m: a a: ; m: b b: ; m: c c: ; m: d d: ; m: e e: ; m: f f: ; m: g g: ; m: h h: ; m: i i: ; m: j j: ;
m: k k: ; m: l l: ; m: m m: ; m: n n: ; m: o o: ; m: p p: ; m: q q: ; m: r r: ; m: s s: ; m: t t: ;
m: u u: ; m: v v: ; m: w w: ; m: x x: ; m: y y: ; m: z z: ;
m: A A: ; m: B B: ; m: C C: ; m: D D: ; m: E E: ; m: F F: ; m: G G: ; m: H H: ;
m: K K: ; m: L L: ; m: M M: ; m: N N: ; m: O O: ; m: P P: ; m: Q Q: ; m: R R: ; m: S S: ; m: T T: ;
m: U U: ; m: V V: ; m: W W: ; m: X X: ; m: Y Y: ; m: Z Z: ;
m: 1 а: ; m: 2 б: ; m: 3 в: ; m: 4 г: ; m: 5 д: ; m: 6 е: ; m: 7 ё: ; m: 8 ж: ; m: 9 з: ;
m: v1 и: ; m: v2 й: ; m: v3 к: ; m: v4 л: ; m: v5 м: ; m: v6 н: ; m: v7 о: ; m: v8 п: ; m: v9 р: ;
EXPORT
m: mvs| {{ mvaluenames ;
m: |mvs }} ;
;MODULE

: NOTFOUND u! a! a C@ ':' = u 1 > AND 0= IF a u NOTFOUND EXIT THEN
  ` mvs| a 1+ a 1+ u + 2- DO I 1- C@ 'v' <> IF I 1 EVALUATE -1 ELSE I 1- 2 EVALUATE -2 THEN +LOOP ` |mvs ;
