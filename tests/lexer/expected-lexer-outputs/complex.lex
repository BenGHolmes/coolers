#name "../examples/complex.cl"
#1 CLASS
#1 TYPEID Main
#1 INHERITS
#1 TYPEID IO
#1 '{'
#2 OBJECTID main
#2 '('
#2 ')'
#2 ':'
#2 TYPEID SELF_TYPE
#2 '{'
#3 '('
#3 LET
#3 OBJECTID c
#3 ':'
#3 TYPEID Complex
#3 ASSIGN
#3 '('
#3 NEW
#3 TYPEID Complex
#3 ')'
#3 '.'
#3 OBJECTID init
#3 '('
#3 INT_CONST 1
#3 ','
#3 INT_CONST 1
#3 ')'
#3 IN
#4 IF
#4 OBJECTID c
#4 '.'
#4 OBJECTID reflect_X
#4 '('
#4 ')'
#4 '.'
#4 OBJECTID reflect_Y
#4 '('
#4 ')'
#4 '='
#4 OBJECTID c
#4 '.'
#4 OBJECTID reflect_0
#4 '('
#4 ')'
#5 THEN
#5 OBJECTID out_string
#5 '('
#5 STR_CONST "=)\n"
#5 ')'
#6 ELSE
#6 OBJECTID out_string
#6 '('
#6 STR_CONST "=(\n"
#6 ')'
#7 FI
#8 ')'
#9 '}'
#9 ';'
#10 '}'
#10 ';'
#12 CLASS
#12 TYPEID Complex
#12 INHERITS
#12 TYPEID IO
#12 '{'
#13 OBJECTID x
#13 ':'
#13 TYPEID Int
#13 ';'
#14 OBJECTID y
#14 ':'
#14 TYPEID Int
#14 ';'
#16 OBJECTID init
#16 '('
#16 OBJECTID a
#16 ':'
#16 TYPEID Int
#16 ','
#16 OBJECTID b
#16 ':'
#16 TYPEID Int
#16 ')'
#16 ':'
#16 TYPEID Complex
#16 '{'
#17 '{'
#18 OBJECTID x
#18 '='
#18 OBJECTID a
#18 ';'
#19 OBJECTID y
#19 '='
#19 OBJECTID b
#19 ';'
#20 OBJECTID self
#20 ';'
#21 '}'
#22 '}'
#22 ';'
#24 OBJECTID print
#24 '('
#24 ')'
#24 ':'
#24 TYPEID Object
#24 '{'
#25 IF
#25 OBJECTID y
#25 '='
#25 INT_CONST 0
#26 THEN
#26 OBJECTID out_int
#26 '('
#26 OBJECTID x
#26 ')'
#27 ELSE
#27 OBJECTID out_int
#27 '('
#27 OBJECTID x
#27 ')'
#27 '.'
#27 OBJECTID out_string
#27 '('
#27 STR_CONST "+"
#27 ')'
#27 '.'
#27 OBJECTID out_int
#27 '('
#27 OBJECTID y
#27 ')'
#27 '.'
#27 OBJECTID out_string
#27 '('
#27 STR_CONST "I"
#27 ')'
#28 FI
#29 '}'
#29 ';'
#31 OBJECTID reflect_0
#31 '('
#31 ')'
#31 ':'
#31 TYPEID Complex
#31 '{'
#32 '{'
#33 OBJECTID x
#33 '='
#33 '~'
#33 OBJECTID x
#33 ';'
#34 OBJECTID y
#34 '='
#34 '~'
#34 OBJECTID y
#34 ';'
#35 OBJECTID self
#35 ';'
#36 '}'
#37 '}'
#37 ';'
#39 OBJECTID reflect_X
#39 '('
#39 ')'
#39 ':'
#39 TYPEID Complex
#39 '{'
#40 '{'
#41 OBJECTID y
#41 '='
#41 '~'
#41 OBJECTID y
#41 ';'
#42 OBJECTID self
#42 ';'
#43 '}'
#44 '}'
#44 ';'
#46 OBJECTID reflect_Y
#46 '('
#46 ')'
#46 ':'
#46 TYPEID Complex
#46 '{'
#47 '{'
#48 OBJECTID x
#48 '='
#48 '~'
#48 OBJECTID x
#48 ';'
#49 OBJECTID self
#49 ';'
#50 '}'
#51 '}'
#51 ';'
#52 '}'
#52 ';'
