\ stenoforth32

\ �������� �⥪�� � �����
: I: : IMMEDIATE ;
I: ` POSTPONE POSTPONE ;

: STACK ( n -- )  CREATE HERE , CELLS ALLOT ;   \ �ᯮ�짮�����: n STACK name
  100 STACK ST-COMP           \ ᮧ����� �⥪ ࠧ��஬ � 100 �祥�

\ ��������� ����� ����権 ��� ࠡ��� � �⨬ �⥪��

\ ��५����� � �⥪� ��ࠬ��஢ �� �⥪
: >CS ( x -- | cs: -- x) ST-COMP CELL OVER +! @ ! ;

\ ᪮��஢��� � �⥪� �� �⥪ ��ࠬ��஢
: CS@ ( cs: x -- x | -- x) ST-COMP @ @ ;

\ ���� ���孨� � �⥪�
: CS-DROP ( cs: x --) ST-COMP DUP DUP @ = INVERT IF CELL NEGATE SWAP +! THEN ;

\ ��५����� � �⥪� �� �⥪ ��ࠬ��஢
: CS> ( cs: x -- | -- x) CS@ CS-DROP ;

\ ������ �⥪
: CS0 ( cs: n*x --) ST-COMP DUP ! ;

\ ���� ��㡨�� �⥪�
: CS-DEPTH ( cs: n*x -- n*x | -- n) ST-COMP DUP @ SWAP - CELL /  ;

\ �஢���� �� ������ fl=1 - �⥪ ����
: ?CS ( -- fl) CS-DEPTH 0= ;
