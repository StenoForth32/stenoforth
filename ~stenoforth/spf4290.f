0 WARNING !
REQUIRE STACK        ~stenoforth\lib\cstack.f       \ �⥪� � �����
REQUIRE CASE         lib\ext\case.f                 \ ��������� CASE

REQUIRE {            ~mak\locals4.f                 \ ������� ��६����
\ REQUIRE {            lib\ext\locals.f             \ ������� ��६����
REQUIRE NUMBER?      ~mak\lib\fpcnum.f              \ �८�ࠧ������ ��ப � �᫠
REQUIRE LIKE         ~pinka\lib\like.f              \ �뤥����� �� ��᪥

REQUIRE M:           ~stenoforth\lib\nf-name.f      \ ������, ᫮��-��ப�
REQUIRE $!           ~mak\place.f                   \ �⨫��� ��� �������室��� �������樨

REQUIRE 0SQRT        ~stenoforth\assm\mp-assm.f     \ ���஥��� ����䨪�� ��ᥬ����( � ���⪠�� ����.�窨)
REQUIRE IDN          ~stenoforth\assm\sp-assm.f     \ ���஥��� ����室�� ��ᥬ���� � ��⪠�� � ���⪨� ᨭ⠪�ᮬ ��� ������権

REQUIRE CHOOSE       lib\ext\rnd.f                  \ ��砩�� �롮�
REQUIRE randomize    ~stenoforth\lib\nrand.f        \ ������஢���� ��� ����襭�� ����த���⢨� ��砩�� �롮�
REQUIRE F.           lib\include\float2.f           \ ����⢥��� �᫠

REQUIRE sd.          ~stenoforth\lib\nloc25.f       \ ����᪨� ������� ��६����, ᫮��, ������, ��ப�
REQUIRE 1-!          ~stenoforth\lib\man-ip.f       \ ���७��

REQUIRE pusto        ~stenoforth\lib\staxy4.f       \ ��אַ� ������� �������権 ��ࠬ��ࠬ� �� �⥪� ��ࠬ��஢
REQUIRE sseet        ~stenoforth\lib\seetl.f        \ �����⥫� �६��� �ᯮ������ ᫮�� �� ࠧ���� � 横���᪮� ��� �ᯮ������

REQUIRE fpoint       ~stenoforth\lib\w-flo.f        \ ����� ��� ᫮� ����.�窨
REQUIRE instructions ~stenoforth\lib\instructions.f \ ����� ᫮�-������権 ������ x86
REQUIRE closure      ~stenoforth\lib\closure.f      \ ���७�� ��� ���몠���
\ REQUIRE 2VARIABLE    lib\include\double.f

REQUIRE valuenames   ~stenoforth\lib\c-fix.f        \ ����� ᨭ������ ��� ᦠ�� ᫮� ��� ࠡ��� � 䨪�.�窮� - ࠧ�來��� 32
REQUIRE mfvaluenames ~stenoforth\lib\c-flo.f        \ ����� ᨭ������ ��� ᦠ�� ᫮� ��� ࠡ��� � ����.�窮�
REQUIRE dsynonyms    ~stenoforth\lib\c-fixd.f       \ ����� ᨭ������ ��� ᦠ�� ᫮� ��� ࠡ��� � 䨪�.�窮� - ࠧ�來���� 64

REQUIRE SYNONYM      ~stenoforth\lib\synonym.f

REQUIRE 2VARIABLE    lib\include\double.f
REQUIRE immediate    ~stenoforth\lib\w-fix.f
REQUIRE f.           ~stenoforth\lib\r-flo.f
REQUIRE [type]       ~stenoforth\math\matr.f
REQUIRE SEE          ~stenoforth\lib\disasm.f       \ ��ࠡ�⠭�� SEE(���� ࠧ��� ���� � �᫮ ������権)
REQUIRE s-inv        ~stenoforth\lib\string.f

S" f:\spf429\devel\~stenoforth\bin\spf486.exe" SAVE

BYE

\EOF

���冷� ����祭�� ���७��� ���-��⥬� spf-4.29(spf486.exe):

1. ����� ��室��� ���-��⥬� �ᯮ������ � ����� f:\spf429(����� g: �.�. ���� 㪠��� ��� ���).
   ��᫥ ᪠稢���� 䠩��� �� ९������(github) �㦭� �������� �ଠ� ��ப �� ��� 䠩��� �� Dos/Windows(0Dh,0Ah).
   �᫨ ���� ������� �ᯮ�짮���� ��ਫ���� � ������ ᫮� � ⥪�⮢�� ���ࠫ��(���ᥬ��) � ���� �ணࠬ���,
   � ����� �������� ����஢�� ��� ⥪�⮢�� 䠩��� �� cp866 ��� ���४⭮�� �⮡ࠦ���� ��ਫ���� � ���᮫�.

2. �����஢��� ᪠砭��� �� ९������ GIT ����� ~stenoforth, � ��⠫�� \spf429\devel\
   䠩� disasm.f �� spf429\lib\ext\ �������� 䠩��� disasm.f, �� ᪠砭���� ९������.

3. �ᯮ����� 䠩� compile.bat �� ����� \spf429\src

4. �������� ࠧ��� ��ࠧ� ���-��⥬�, �ᯮ���� �� ���. ��ப� �������:
   spf4.exe  IMAGE-SIZE 64 * TO IMAGE-SIZE S" spf4p.exe" SAVE BYE

5. ���࠭᫨஢��� ��� 䠩�(Spf4290.f) c ������� spf4p.exe �� ����� \spf429


   
