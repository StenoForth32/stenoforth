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
\ v
\ w
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
m: : -> ;
m: ; EXIT ;
m: 1 ƒ ; m: 2 „ ; m: 3 … ; m: 4 ð ; m: 5 † ; m: 6 ‡ ; m: 7 ˆ ; m: 8 ‰ ; m: 9 Š ;
EXPORT
m: fs| {{ fsynonyms ;
m: |fs }} ;
;MODULE

: NOTFOUND u\ a\ a C@ '{' = u 1 > AND 0= IF a u NOTFOUND EXIT THEN
` fs| a 1+ u 1- aDO I C@ 'v' <> IF I 1 EVALUATE 1 ELSE I 2 EVALUATE 2 THEN +LOOP ` |fs ;

MODULE: fvaluenames
m: 1 ƒ$ ; m: 2 „$ ; m: 3 …$ ; m: 4 ð$ ; m: 5 †$ ; m: 6 ‡$ ; m: 7 ˆ$ ; m: 8 ‰$ ; m: 9 Š$ ;
EXPORT
m: vf| {{ fvaluenames ;
m: |vf }} ;
;MODULE


: NOTFOUND u\ a\ a C@ '$' = u 1 > AND 0= IF a u NOTFOUND EXIT THEN
  ` vf| a 1+ a 1+ u + 2- DO I 1- C@ 'v' <> IF I 1 EVALUATE -1 ELSE I 1- 2 EVALUATE -2 THEN +LOOP ` |vf ;

MODULE: mfvaluenames
m: 1 ƒ; ; m: 2 „; ; m: 3 …; ; m: 4 ð; ; m: 5 †; ; m: 6 ‡; ; m: 7 ˆ; ; m: 8 ‰; ; m: 9 Š; ;
EXPORT
m: mvf| {{ mfvaluenames ;
m: |mvf }} ;
;MODULE

: NOTFOUND u\ a\ a C@ ';' = u 1 > AND 0= IF a u NOTFOUND EXIT THEN
  ` mvf| a 1+ a 1+ u + 2- DO I 1- C@ 'v' <> IF I 1 EVALUATE -1 ELSE I 1- 2 EVALUATE -2 THEN +LOOP ` |mvf ;
