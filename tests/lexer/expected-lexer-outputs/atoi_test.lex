#name "../examples/atoi_test.cl"
#9 CLASS
#9 TYPEID Main
#9 INHERITS
#9 TYPEID IO
#9 '{'
#10 OBJECTID newline
#10 '('
#10 ')'
#10 ':'
#10 TYPEID Object
#10 '{'
#11 OBJECTID out_string
#11 '('
#11 STR_CONST "\n"
#11 ')'
#12 '}'
#12 ';'
#14 OBJECTID prompt
#14 '('
#14 ')'
#14 ':'
#14 TYPEID String
#14 '{'
#15 '{'
#16 OBJECTID out_string
#16 '('
#16 STR_CONST "Enter a number>"
#16 ')'
#16 ';'
#17 OBJECTID in_string
#17 '('
#17 ')'
#17 ';'
#18 '}'
#19 '}'
#19 ';'
#21 OBJECTID main
#21 '('
#21 ')'
#21 ':'
#21 TYPEID Object
#21 '{'
#25 '('
#25 LET
#25 OBJECTID z
#25 ':'
#25 TYPEID A2I
#25 ASSIGN
#25 NEW
#25 TYPEID A2I
#25 IN
#26 WHILE
#26 BOOL_CONST true
#26 LOOP
#27 '('
#27 LET
#27 OBJECTID s
#27 ':'
#27 TYPEID String
#27 ASSIGN
#27 OBJECTID prompt
#27 '('
#27 ')'
#27 IN
#28 IF
#28 OBJECTID s
#28 '='
#28 STR_CONST "stop"
#28 THEN
#29 OBJECTID abort
#29 '('
#29 ')'
#30 ELSE
#31 '('
#31 LET
#31 OBJECTID i
#31 ':'
#31 TYPEID Int
#31 ASSIGN
#31 OBJECTID z
#31 '.'
#31 OBJECTID a2i
#31 '('
#31 OBJECTID s
#31 ')'
#31 IN
#32 '('
#32 LET
#32 OBJECTID news
#32 ':'
#32 TYPEID String
#32 ASSIGN
#32 OBJECTID z
#32 '.'
#32 OBJECTID i2a
#32 '('
#32 OBJECTID i
#32 ')'
#32 IN
#33 '{'
#34 OBJECTID out_int
#34 '('
#34 OBJECTID i
#34 ')'
#34 ';'
#35 OBJECTID newline
#35 '('
#35 ')'
#35 ';'
#36 OBJECTID out_string
#36 '('
#36 OBJECTID news
#36 ')'
#36 ';'
#37 OBJECTID newline
#37 '('
#37 ')'
#37 ';'
#38 '}'
#39 ')'
#40 ')'
#41 FI
#42 ')'
#43 POOL
#44 ')'
#45 '}'
#45 ';'
#46 '}'
#46 ';'
