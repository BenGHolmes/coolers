#name "../examples/list.cl"
#26 CLASS
#26 TYPEID List
#26 '{'
#29 OBJECTID isNil
#29 '('
#29 ')'
#29 ':'
#29 TYPEID Bool
#29 '{'
#29 BOOL_CONST true
#29 '}'
#29 ';'
#35 OBJECTID head
#35 '('
#35 ')'
#35 ':'
#35 TYPEID Int
#35 '{'
#35 '{'
#35 OBJECTID abort
#35 '('
#35 ')'
#35 ';'
#35 INT_CONST 0
#35 ';'
#35 '}'
#35 '}'
#35 ';'
#40 OBJECTID tail
#40 '('
#40 ')'
#40 ':'
#40 TYPEID List
#40 '{'
#40 '{'
#40 OBJECTID abort
#40 '('
#40 ')'
#40 ';'
#40 OBJECTID self
#40 ';'
#40 '}'
#40 '}'
#40 ';'
#49 OBJECTID cons
#49 '('
#49 OBJECTID i
#49 ':'
#49 TYPEID Int
#49 ')'
#49 ':'
#49 TYPEID List
#49 '{'
#50 '('
#50 NEW
#50 TYPEID Cons
#50 ')'
#50 '.'
#50 OBJECTID init
#50 '('
#50 OBJECTID i
#50 ','
#50 OBJECTID self
#50 ')'
#51 '}'
#51 ';'
#53 '}'
#53 ';'
#70 CLASS
#70 TYPEID Cons
#70 INHERITS
#70 TYPEID List
#70 '{'
#72 OBJECTID car
#72 ':'
#72 TYPEID Int
#72 ';'
#74 OBJECTID cdr
#74 ':'
#74 TYPEID List
#74 ';'
#76 OBJECTID isNil
#76 '('
#76 ')'
#76 ':'
#76 TYPEID Bool
#76 '{'
#76 BOOL_CONST false
#76 '}'
#76 ';'
#78 OBJECTID head
#78 '('
#78 ')'
#78 ':'
#78 TYPEID Int
#78 '{'
#78 OBJECTID car
#78 '}'
#78 ';'
#80 OBJECTID tail
#80 '('
#80 ')'
#80 ':'
#80 TYPEID List
#80 '{'
#80 OBJECTID cdr
#80 '}'
#80 ';'
#82 OBJECTID init
#82 '('
#82 OBJECTID i
#82 ':'
#82 TYPEID Int
#82 ','
#82 OBJECTID rest
#82 ':'
#82 TYPEID List
#82 ')'
#82 ':'
#82 TYPEID List
#82 '{'
#83 '{'
#84 OBJECTID car
#84 ASSIGN
#84 OBJECTID i
#84 ';'
#85 OBJECTID cdr
#85 ASSIGN
#85 OBJECTID rest
#85 ';'
#86 OBJECTID self
#86 ';'
#87 '}'
#88 '}'
#88 ';'
#90 '}'
#90 ';'
#100 CLASS
#100 TYPEID Main
#100 INHERITS
#100 TYPEID IO
#100 '{'
#102 OBJECTID mylist
#102 ':'
#102 TYPEID List
#102 ';'
#107 OBJECTID print_list
#107 '('
#107 OBJECTID l
#107 ':'
#107 TYPEID List
#107 ')'
#107 ':'
#107 TYPEID Object
#107 '{'
#108 IF
#108 OBJECTID l
#108 '.'
#108 OBJECTID isNil
#108 '('
#108 ')'
#108 THEN
#108 OBJECTID out_string
#108 '('
#108 STR_CONST "\n"
#108 ')'
#109 ELSE
#109 '{'
#110 OBJECTID out_int
#110 '('
#110 OBJECTID l
#110 '.'
#110 OBJECTID head
#110 '('
#110 ')'
#110 ')'
#110 ';'
#111 OBJECTID out_string
#111 '('
#111 STR_CONST " "
#111 ')'
#111 ';'
#112 OBJECTID print_list
#112 '('
#112 OBJECTID l
#112 '.'
#112 OBJECTID tail
#112 '('
#112 ')'
#112 ')'
#112 ';'
#113 '}'
#114 FI
#115 '}'
#115 ';'
#126 OBJECTID main
#126 '('
#126 ')'
#126 ':'
#126 TYPEID Object
#126 '{'
#127 '{'
#128 OBJECTID mylist
#128 ASSIGN
#128 NEW
#128 TYPEID List
#128 '.'
#128 OBJECTID cons
#128 '('
#128 INT_CONST 1
#128 ')'
#128 '.'
#128 OBJECTID cons
#128 '('
#128 INT_CONST 2
#128 ')'
#128 '.'
#128 OBJECTID cons
#128 '('
#128 INT_CONST 3
#128 ')'
#128 '.'
#128 OBJECTID cons
#128 '('
#128 INT_CONST 4
#128 ')'
#128 '.'
#128 OBJECTID cons
#128 '('
#128 INT_CONST 5
#128 ')'
#128 ';'
#129 WHILE
#129 '('
#129 NOT
#129 OBJECTID mylist
#129 '.'
#129 OBJECTID isNil
#129 '('
#129 ')'
#129 ')'
#129 LOOP
#130 '{'
#131 OBJECTID print_list
#131 '('
#131 OBJECTID mylist
#131 ')'
#131 ';'
#132 OBJECTID mylist
#132 ASSIGN
#132 OBJECTID mylist
#132 '.'
#132 OBJECTID tail
#132 '('
#132 ')'
#132 ';'
#133 '}'
#134 POOL
#134 ';'
#135 '}'
#136 '}'
#136 ';'
#138 '}'
#138 ';'
