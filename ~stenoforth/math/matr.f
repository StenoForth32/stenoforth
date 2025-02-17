\ пересылка n одинарных чисел с фикс. точкой со стека в память данных
: n>dh \ n -- a u
  cells ldhere !21 [12 spmove [2 spdrop [12d ldhere + to ldhere
;
\ создать матрицу
\ -- a u
: m(  0. col! str! 0. lex!d 0 fa!
  begin parse-name -> lex lex s" )" compare 0=
   if str 1+ -> str else lex number?
     if D>S col 1+ -> col else 2drop 1 -> fa then
   then fa
  until col str / -> col col str 2dup * 2+ n>dh
;
\ добавить строку к матрице
\ a u -- a u'
: ((  u! a! a u + 8 - @ col! a u + 4 - @ str!
  ldhere 8 - to ldhere 0. lex!d 0 fa! \ -- a u
  begin parse-name -> lex lex s" )" compare 0=
   if str 1+ -> str 1 -> fa else lex number?
     if D>S else 2drop 1 -> fa then
   then fa
  until col str col 2+ n>dh u 8 - + swap drop a swap
;
\ транспонировать матрицу
\ a u -- a u
: [t] | a! u! | a u + 8 - @ a u + 4 - @ | col! str! |
  col 0 do str 0 do i col * j + 4 * a + @ loop loop
  str col u 4 / n>dh
;
\ умножение матриц
\ a1 u1 a2 u2 -- a3 u3
: [*]  [t] | a1! u1! a2! u2! | 0 k!
  a1 u1 + 8 - @ c1! a1 u1 + 4 - @ s1!
  a2 u2 + 8 - @ c2! a2 u2 + 4 - @ s2!
  c1 c2 <> if ." invalid format" S0 @ sp! exit then
  s1 0 do i -> k
       s2 0 do
            c2 0 do i k c1 * + 4 * a1 + @
                    i j c2 * + 4 * a2 + @ *
            loop c2 1- 0 do + loop
       loop
  loop s2 s1 s2 s1 * 2+ n>dh
;
\ определить число десятичных цифр в числе
\ n -- k
: zrd dup n! 1 k!
  begin n 10 / dup 0=
   if drop k exit else -> n k 1+ -> k then
  again
;
\ распечатка числа с учетом его знака и
\ количества его цифр
\ n --
: .m mmt! dup dup n! 0 < 1 and k!
  begin n 10 / dup 0=
    if drop mmt k - spaces . exit
    else -> n k 1+ -> k then
  again
;
\ распечатка чисел с минимальным количеством ведущих пробелов,
\ определяемым максимальным по количеству цифр числа матрицы
\ и его знака, выравненных по правому краю
\ a u --
: [type] u! a! 0 a u ado i @ abs max 4 +loop zrd mmt!
  a u + 8 - @ co! a u + 4 - @ st!
  st 0 do cr co 0 do co j * i + 4 * a + @ mmt .m
  loop loop
;

\EOF

m( 2 3 4 5 ) 4 6 8 10 ) 8 12 16 20 )
2value mt1
m( 2 4 8 16 ) 3 6 12 24 ) 4 8 16 32 ) 5 10 20 40 )
2value mt2

mt1 mt2 [*] 2value mt3

m( 2  3  4  5 )
(( 4  6  8 10 )
(( 8 12 16 20 )

m( 2  4  8 16 )
(( 3  6 12 24 )
(( 4  8 16 32 )
(( 5 10 20 40 )

[*] 2value mat3

mat3 [type] cr


m(  1    2 3 -400  5 6 )
((  6 5000 4    3  2 1 )

m(  1   1 )
(( 20   2 )
((  3 -30 )
(( 40   4 )
((  5  50 )
((  6   6 )

[*] [type]
