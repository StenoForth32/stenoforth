\ сумма квадратов - разный синтаксис
\ n1 n2 -- n1*n1 + n2*n2

\ fix point
: sum-sq   DUP * SWAP DUP * + ;
: sum-sq0  | a! b! | a a * b b * + ;
: sum-sq1  !ab  a a * b b * + ;
: sum-sq2  !12 [11*22+ ;

\ float point
: sum-sq3  FDUP F* FSWAP FDUP F* F+ ;
: sum-sq4  f| dup  * swap dup * + |f ;
: sum-sq5  | a, b, | f| a a * b b * + |f ;
: sum-sq6  ,ab f| a a * b b * + |f ;
: sum-sq7  ,12  {11*22+ ;

\ Площадь треугольника по Герону
\ a b c -- S3

\ fix point
: S3   | a! b! c! | a b c + + 2/ p!
       p a - p b - * p c - * p * sqrt ;
: S31  !abc a b c + + 2/ p!
       p a - p b - * p c - * p * sqrt ;
: S32  !123 [123++ 2/ !4 [41-42-*43-*4*q ;

\ float point
: S33  | a, b, c, | f| a b c + + 2/ p!
       p a - p b - * p c - * p * sqrt |f ;
: S34  ,abc f| a b c + + 2/ p!
       p a - p b - * p c - * p * sqrt |f ;
: S35  ,123 {123++ 2e {/ ,4 {41-42-*43-*4*q ;


\ стековые перестановки
\ обычным образом
: f1 DUP DUP >R 2SWAP R>      ; 1 2 3 f1 .s

\ прямой генерацией
: f2 3|33123 ;                  1 2 3 f2 .s


\ Инверсия строки
\ sd1 -- sd2
\           s1s2
\ в стат. памяти, не трогая исходную строку
: s-inv 0. !1234 [h:32_112+jDIb34+w4i:4YnN34 ;

S" 1234567" s-inv TYPE CR
\ в дин. памяти, не трогая исходную строку
: s-invh 0. !1234 [2 "A [:3112+jDIb34+w4i:4YnN34 ;

S" 12345678" s-invh TYPE CR

\ заменить исходную строку инвертированной
: s-invv [d 2/ 0 !1234 [13+:43iyD4I-b4I+b4I-w4I+wL12 ;

S" 123456789" s-invv TYPE
