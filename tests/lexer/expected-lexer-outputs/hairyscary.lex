#name "../examples/hairyscary.cl"
#3 CLASS
#3 TYPEID Foo
#3 INHERITS
#3 TYPEID Bazz
#3 '{'
#4 OBJECTID a
#4 ':'
#4 TYPEID Razz
#4 ASSIGN
#4 CASE
#4 OBJECTID self
#4 OF
#5 OBJECTID n
#5 ':'
#5 TYPEID Razz
#5 DARROW
#5 '('
#5 NEW
#5 TYPEID Bar
#5 ')'
#5 ';'
#6 OBJECTID n
#6 ':'
#6 TYPEID Foo
#6 DARROW
#6 '('
#6 NEW
#6 TYPEID Razz
#6 ')'
#6 ';'
#7 OBJECTID n
#7 ':'
#7 TYPEID Bar
#7 DARROW
#7 OBJECTID n
#7 ';'
#8 ESAC
#8 ';'
#10 OBJECTID b
#10 ':'
#10 TYPEID Int
#10 ASSIGN
#10 OBJECTID a
#10 '.'
#10 OBJECTID doh
#10 '('
#10 ')'
#10 '+'
#10 OBJECTID g
#10 '.'
#10 OBJECTID doh
#10 '('
#10 ')'
#10 '+'
#10 OBJECTID doh
#10 '('
#10 ')'
#10 '+'
#10 OBJECTID printh
#10 '('
#10 ')'
#10 ';'
#12 OBJECTID doh
#12 '('
#12 ')'
#12 ':'
#12 TYPEID Int
#12 '{'
#12 '('
#12 LET
#12 OBJECTID i
#12 ':'
#12 TYPEID Int
#12 ASSIGN
#12 OBJECTID h
#12 IN
#12 '{'
#12 OBJECTID h
#12 ASSIGN
#12 OBJECTID h
#12 '+'
#12 INT_CONST 2
#12 ';'
#12 OBJECTID i
#12 ';'
#12 '}'
#12 ')'
#12 '}'
#12 ';'
#14 '}'
#14 ';'
#16 CLASS
#16 TYPEID Bar
#16 INHERITS
#16 TYPEID Razz
#16 '{'
#18 OBJECTID c
#18 ':'
#18 TYPEID Int
#18 ASSIGN
#18 OBJECTID doh
#18 '('
#18 ')'
#18 ';'
#20 OBJECTID d
#20 ':'
#20 TYPEID Object
#20 ASSIGN
#20 OBJECTID printh
#20 '('
#20 ')'
#20 ';'
#21 '}'
#21 ';'
#24 CLASS
#24 TYPEID Razz
#24 INHERITS
#24 TYPEID Foo
#24 '{'
#26 OBJECTID e
#26 ':'
#26 TYPEID Bar
#26 ASSIGN
#26 CASE
#26 OBJECTID self
#26 OF
#27 OBJECTID n
#27 ':'
#27 TYPEID Razz
#27 DARROW
#27 '('
#27 NEW
#27 TYPEID Bar
#27 ')'
#27 ';'
#28 OBJECTID n
#28 ':'
#28 TYPEID Bar
#28 DARROW
#28 OBJECTID n
#28 ';'
#29 ESAC
#29 ';'
#31 OBJECTID f
#31 ':'
#31 TYPEID Int
#31 ASSIGN
#31 OBJECTID a
#31 '@'
#31 TYPEID Bazz
#31 '.'
#31 OBJECTID doh
#31 '('
#31 ')'
#31 '+'
#31 OBJECTID g
#31 '.'
#31 OBJECTID doh
#31 '('
#31 ')'
#31 '+'
#31 OBJECTID e
#31 '.'
#31 OBJECTID doh
#31 '('
#31 ')'
#31 '+'
#31 OBJECTID doh
#31 '('
#31 ')'
#31 '+'
#31 OBJECTID printh
#31 '('
#31 ')'
#31 ';'
#33 '}'
#33 ';'
#35 CLASS
#35 TYPEID Bazz
#35 INHERITS
#35 TYPEID IO
#35 '{'
#37 OBJECTID h
#37 ':'
#37 TYPEID Int
#37 ASSIGN
#37 INT_CONST 1
#37 ';'
#39 OBJECTID g
#39 ':'
#39 TYPEID Foo
#39 ASSIGN
#39 CASE
#39 OBJECTID self
#39 OF
#40 OBJECTID n
#40 ':'
#40 TYPEID Bazz
#40 DARROW
#40 '('
#40 NEW
#40 TYPEID Foo
#40 ')'
#40 ';'
#41 OBJECTID n
#41 ':'
#41 TYPEID Razz
#41 DARROW
#41 '('
#41 NEW
#41 TYPEID Bar
#41 ')'
#41 ';'
#42 OBJECTID n
#42 ':'
#42 TYPEID Foo
#42 DARROW
#42 '('
#42 NEW
#42 TYPEID Razz
#42 ')'
#42 ';'
#43 OBJECTID n
#43 ':'
#43 TYPEID Bar
#43 DARROW
#43 OBJECTID n
#43 ';'
#44 ESAC
#44 ';'
#46 OBJECTID i
#46 ':'
#46 TYPEID Object
#46 ASSIGN
#46 OBJECTID printh
#46 '('
#46 ')'
#46 ';'
#48 OBJECTID printh
#48 '('
#48 ')'
#48 ':'
#48 TYPEID Int
#48 '{'
#48 '{'
#48 OBJECTID out_int
#48 '('
#48 OBJECTID h
#48 ')'
#48 ';'
#48 INT_CONST 0
#48 ';'
#48 '}'
#48 '}'
#48 ';'
#50 OBJECTID doh
#50 '('
#50 ')'
#50 ':'
#50 TYPEID Int
#50 '{'
#50 '('
#50 LET
#50 OBJECTID i
#50 ':'
#50 TYPEID Int
#50 ASSIGN
#50 OBJECTID h
#50 IN
#50 '{'
#50 OBJECTID h
#50 ASSIGN
#50 OBJECTID h
#50 '+'
#50 INT_CONST 1
#50 ';'
#50 OBJECTID i
#50 ';'
#50 '}'
#50 ')'
#50 '}'
#50 ';'
#51 '}'
#51 ';'
#54 CLASS
#54 TYPEID Main
#54 '{'
#55 OBJECTID a
#55 ':'
#55 TYPEID Bazz
#55 ASSIGN
#55 NEW
#55 TYPEID Bazz
#55 ';'
#56 OBJECTID b
#56 ':'
#56 TYPEID Foo
#56 ASSIGN
#56 NEW
#56 TYPEID Foo
#56 ';'
#57 OBJECTID c
#57 ':'
#57 TYPEID Razz
#57 ASSIGN
#57 NEW
#57 TYPEID Razz
#57 ';'
#58 OBJECTID d
#58 ':'
#58 TYPEID Bar
#58 ASSIGN
#58 NEW
#58 TYPEID Bar
#58 ';'
#60 OBJECTID main
#60 '('
#60 ')'
#60 ':'
#60 TYPEID String
#60 '{'
#60 STR_CONST "do nothing"
#60 '}'
#60 ';'
#62 '}'
#62 ';'
