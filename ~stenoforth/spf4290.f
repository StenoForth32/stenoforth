REQUIRE STACK        ~stenoforth\lib\cstack.spf       \ стеки в памяти
REQUIRE CASE         lib\ext\case.f                   \ конструкция CASE

REQUIRE {            lib\ext\locals.f                 \ локальные переменные
REQUIRE NUMBER?      ~mak\lib\fpcnum.f                \ преобразование строк в числа
REQUIRE LIKE         ~pinka\lib\like.f                \ выделение по маске

REQUIRE M:           ~stenoforth\lib\nf-name.f        \ макросы, слова-строки
REQUIRE $!           ~mak\place.f                     \ утилиты для многопроходной компиляции

REQUIRE SEE          ~stenoforth\lib\disasm.f         \ доработанный SEE(дает размер кода и число инструкций)

REQUIRE 0SQRT        ~stenoforth\assm\mp-assm.f       \ встроенный постфиксный ассемблер( с зачатками плав.точки)
REQUIRE IDN          ~stenoforth\assm\sp-assm.f       \ встроенный трехпроходный ассемблер с метками и коротким синтаксисом для инструкций

REQUIRE CHOOSE       lib\ext\rnd.f                    \ случайный выбор
REQUIRE randomize    ~stenoforth\lib\nrand.f          \ модифицированный случайный выбор
REQUIRE F.           lib\include\float2.f             \ вещественные числа

REQUIRE sd.          ~stenoforth\lib\nloc25.f         \ статические локальные переменные, слова, макросы, строки
REQUIRE 1-!          ~stenoforth\lib\man-ip.f         \ расширение

REQUIRE pusto        ~stenoforth\lib\staxy4.f         \ стековые стяжки - стексы - оптимизация кода стековых перестановок
REQUIRE sseet        ~stenoforth\lib\seetl.f          \ измеритель времени исполнения слова при разовом и циклическом его исполнении

REQUIRE fpoint       ~stenoforth\lib\w-flo.f          \ модуль для слов плав.точки
REQUIRE instructions ~stenoforth\lib\instructions.f   \ модуль слов-инструкций процессора x86
REQUIRE closure      ~stenoforth\lib\closure.f        \ расширение для замыканий

REQUIRE valuenames   ~stenoforth\lib\c-fix.f          \ модуль синонимов для сжатия слов для работы с фикс.точкой - разряднось 32
REQUIRE mfvaluenames ~stenoforth\lib\c-flo.f          \ модуль синонимов для сжатия слов для работы с плав.точкой
REQUIRE dsynonyms    ~stenoforth\lib\c-fixd.f         \ модуль синонимов для сжатия слов для работы с фикс.точкой - разрядность 64

S" g:\spf429\devel\~stenoforth\bin\spf486.exe" SAVE

BYE

\EOF

Порядок получения расширенной форт-системы spf-4.29(spf486.exe):

1. Пусть исходная форт-система расположена в папке g:\spf429(вместо g: д.б. быть указан ваш диск)
   после скачивания файлов из репозитория(github) нужно поменять формат строк во всех файлах на Dos/Windows(0Dh,0Ah)
   в редакторе. Кодировка всех файлов должна быть cp866.

2. Скопировать скачанную из репозитория GIT распакованную папку в каталог \spf429\devel и переименовать ее в ~stenoforth,
   файл disasm.f из spf429\lib\ext\ заменить на файл disasm.spf, из скачанного репозитория, который предварительно переименовать в disasm.f

3. Исполнить файл compile.bat из папки \spf429\src

4. Увеличить размер образа форт-системы, исполнив из ком. строки команду:
   spf4.exe  IMAGE-SIZE 64 * TO IMAGE-SIZE S" spf4p.exe" SAVE BYE

5. Оттранслировать этот файл(Spf4290.f) c помощью spf4p.exe из папки \spf429


   
