\ stenoforth32

m: aDO  OVER + SWAP ?DO ;     \ макрос ( BOUND ?DO )
m: I+  ( n -- )  R@ + RP@ ! ; \ макрос - увеличение счетчика цикла

: .0b ( n -- ) 2 BASE ! .0 DECIMAL ;
: .0h ( n -- ) HEX .0 DECIMAL ;
: .BL ( n -- ) >R 0 <# #S #> R> OVER - 0 MAX DUP IF 0 DO BL EMIT LOOP ELSE DROP THEN TYPE ;

: sqrt ( n -- sqrt ) C=A $ -4 @P=A $ -4 0=@P 0SQRT $ -4 @P=0- $ -4 A=@P B=A *A C=A? L1 J>= B-- L1: A=B ;

: D* D>F D>F F* F>D ;
: D/ 2SWAP D>F D>F F/ F>D ;

m: DOR     ( d1 d2 -- d3)  D=@P $ 8 Pa $ -4 A|@P @P|D ;
m: DXOR    ( d1 d2 -- d3)  D=@P $ 8 Pa $ -4 A^@P @P^D ;
m: DAND    ( d1 d2 -- d3)  D=@P $ 8 Pa $ -4 A&@P @P&D ;
m: DINVERT ( d1 -- d2 )    @P~ A~ ;
m: DLSHIFT ( d n -- 'd ) $ 4 D=@P $ 20 C=# C-A D>> C=A @P<< $ 4 @P<< @P|D DROP ;
m: DRSHIFT ( d n -- 'd ) D=@P $ 20 C=# C-A D<< C=A @P>> $ 4 @P>> $ 4 @P|D DROP ;
: D0<>     ( d -- f ) D0= INVERT ;
m: -!      ( n addr -- ) D=@P -D @A+D $ 4 A=@P $ 8 Pa  ;
m: 1-!     ( addr --) @A-- DROP ;
