\ stenoforth32

\ перевод часто используемых имен слов в нижний регистр

m: exit EXIT ;
: c@ C@ ;
: w@ W@ ;
: c! C! ;
: w! W! ;
: c, C, ;
: w, W, ;
: dup DUP ;
: 2dup 2DUP ;
: drop DROP ;
: 2drop 2DROP ;
: swap SWAP ;
: 2swap 2SWAP ;
: over OVER ;
: nip NIP ;
: tuck TUCK ;
: 2over 2OVER ;
: rot ROT ;
: -rot -ROT ;
: sp@ SP@ ;
: sp! SP! ;
: depth DEPTH ;
m: >r >R ;
m: 2>r 2>R ;
m: r> R> ;
m: 2r> 2R> ;
m: r@ R@ ;
m: 2r@ 2R@ ;
m: rp@ RP@ ;
m: rp! RP! ;
m: rdepth RDEPTH ;
m: rallot RALLOT ;
: .bl .BL ;
: bl BL ;
: space SPACE ;
: spaces SPACES ;
: d. D. ;
: cr CR ;
: hex HEX ;
: decimal DECIMAL ;
: or OR ;
: xor XOR ;
: and AND ;
: invert INVERT ;
: lshift LSHIFT ;
: rshift RSHIFT ;
: true TRUE ;
: false FALSE ;
m: if IF ;
m: else ELSE ;
m: then THEN ;
m: case CASE ;
m: of OF ;
m: endof ENDOF ;
m: endcase ENDCASE ;
m: begin BEGIN ;
m: again AGAIN ;
m: until UNTIL ;
m: while WHILE ;
m: repeat REPEAT ;
m: do DO ;
m: ?do ?DO ;
m: ado aDO ;
m: i+ I+ ;
m: i I ;
m: leave LEAVE ;
m: unloop UNLOOP ;
m: loop LOOP ;
m: +loop +LOOP ;
: create CREATE ;
m: does> DOES> ;
: aligned ALIGNED ;
: align ALIGN ;
: align-nop ALIGN-NOP ;
: dp DP ;
: here HERE ;
: cell CELL ;
: cells CELLS ;
: allot ALLOT ;
: constant CONSTANT ;
: variable VARIABLE ;
: value VALUE ;
: vect VECT ;
: ->vect ->VECT ;
: user USER ;
: user-value USER-VALUE ;
: user-create USER-CREATE ;
: allocate ALLOCATE ;
: resize RESIZE ;
: free FREE ;
: throw THROW ;
: recurse RECURSE ;
: latest LATEST ;
: last LAST ;
: vocabulary VOCABULARY ;
: definitions DEFINITIONS ;
: also ALSO ;
: previous PREVIOUS ;
: lit, LIT, ;
: slit, SLIT, ;
m: rlit, RLIT, ;
: dlit, DLIT, ;
: number? NUMBER? ;
: :noname :NONAME ;
: erase ERASE ;
: fill FILL ;
: compare COMPARE ;
: search SEARCH ;
: move MOVE ;
: emit EMIT ;
: spmove SPMOVE ;
: spdrop SPDROP ;
: sp>mem SP>MEM ;
: key KEY ;
: within WITHIN ;
: min MIN ;
: max MAX ;
: abs ABS ;
: negate NEGATE ;
: mod MOD ;
: /mod /MOD ;
: evaluate EVALUATE ;
I: postpone ` POSTPONE ;
: execute EXECUTE ;
: immediate IMMEDIATE ;
: base BASE ;
: state STATE ;
: type TYPE ;
: dump DUMP ;
I: s" ` S" ;
: nextword NextWord ;
: parse-name PARSE-NAME ;
: parse PARSE ;
