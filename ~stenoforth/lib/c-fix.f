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
m: i 1+ ;                                                              m: : -> ;
m: j 1- ;                                                              m: ; EXIT ;
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
( v - ��䨪� )                     m: V MOVE ;
m: w C! ;                           m: W WHILE ;
m: x DROP ;                         m: X EXECUTE ;
m: y $ -4 @P=A A^A $ -4 Pa ;        m: Y $ -4 @P=A $ 1 A=# $ -4 Pa ;
m: z 0<> ;                          m: Z 0= ;
m: 1 � ; m: 2 � ; m: 3 � ; m: 4 � ; m: 5 � ; m: 6 � ; m: 7 � ; m: 8 � ; m: 9 � ;
EXPORT
m: s| {{ syn-fixpoint ;
m: |s }} ;
;MODULE

: NOTFOUND u\ a\ a C@ '[' = u 1 > AND 0= IF a u NOTFOUND EXIT THEN
` s| a 1+ u 1- aDO I C@ 'v' <> IF I 1 EVALUATE 1 ELSE I 2 EVALUATE 2 THEN +LOOP ` |s ;

MODULE: valuenames
m: 1 �\ ; m: 2 �\ ; m: 3 �\ ; m: 4 �\ ; m: 5 �\ ; m: 6 �\ ; m: 7 �\ ; m: 8 �\ ; m: 9 �\ ;
EXPORT
m: vs| {{ valuenames ;
m: |vs }} ;
;MODULE

: NOTFOUND u\ a\ a C@ '\' = u 1 > AND 0= IF a u NOTFOUND EXIT THEN
  ` vs| a 1+ a 1+ u + 2- DO I 1- C@ 'v' <> IF I 1 EVALUATE -1 ELSE I 1- 2 EVALUATE -2 THEN +LOOP ` |vs ;

MODULE: mvaluenames
m: 1 �: ; m: 2 �: ; m: 3 �: ; m: 4 �: ; m: 5 �: ; m: 6 �: ; m: 7 �: ; m: 8 �: ; m: 9 �: ;
EXPORT
m: mvs| {{ mvaluenames ;
m: |mvs }} ;
;MODULE

: NOTFOUND u\ a\ a C@ ':' = u 1 > AND 0= IF a u NOTFOUND EXIT THEN
  ` mvs| a 1+ a 1+ u + 2- DO I 1- C@ 'v' <> IF I 1 EVALUATE -1 ELSE I 1- 2 EVALUATE -2 THEN +LOOP ` |mvs ;
