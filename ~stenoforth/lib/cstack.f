\ stenoforth32

\ Создание стеков в памяти
: I: : IMMEDIATE ;
I: ` POSTPONE POSTPONE ;

: STACK ( n -- )  CREATE HERE , CELLS ALLOT ;   \ использование: n STACK name
  100 STACK ST-COMP           \ создадим стек размером в 100 ячеек

\ минимальный набор операций для работы с этим стеком

\ переложить со стека параметров на стек
: >CS ( x -- | cs: -- x) ST-COMP CELL OVER +! @ ! ;

\ скопировать со стека на стек параметров
: CS@ ( cs: x -- x | -- x) ST-COMP @ @ ;

\ убрать верхний со стека
: CS-DROP ( cs: x --) ST-COMP DUP DUP @ = INVERT IF CELL NEGATE SWAP +! THEN ;

\ переложить со стека на стек параметров
: CS> ( cs: x -- | -- x) CS@ CS-DROP ;

\ очистить стек
: CS0 ( cs: n*x --) ST-COMP DUP ! ;

\ дать глубину стека
: CS-DEPTH ( cs: n*x -- n*x | -- n) ST-COMP DUP @ SWAP - CELL /  ;

\ проверить на пустоту fl=1 - стек пуст
: ?CS ( -- fl) CS-DEPTH 0= ;
