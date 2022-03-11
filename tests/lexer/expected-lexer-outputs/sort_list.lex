#name "../examples/sort_list.cl"
#24 CLASS
#24 TYPEID List
#24 INHERITS
#24 TYPEID IO
#24 '{'
#28 OBJECTID isNil
#28 '('
#28 ')'
#28 ':'
#28 TYPEID Bool
#28 '{'
#28 '{'
#28 OBJECTID abort
#28 '('
#28 ')'
#28 ';'
#28 BOOL_CONST true
#28 ';'
#28 '}'
#28 '}'
#28 ';'
#30 OBJECTID cons
#30 '('
#30 OBJECTID hd
#30 ':'
#30 TYPEID Int
#30 ')'
#30 ':'
#30 TYPEID Cons
#30 '{'
#31 '('
#31 LET
#31 OBJECTID new_cell
#31 ':'
#31 TYPEID Cons
#31 ASSIGN
#31 NEW
#31 TYPEID Cons
#31 IN
#32 OBJECTID new_cell
#32 '.'
#32 OBJECTID init
#32 '('
#32 OBJECTID hd
#32 ','
#32 OBJECTID self
#32 ')'
#33 ')'
#34 '}'
#34 ';'
#41 OBJECTID car
#41 '('
#41 ')'
#41 ':'
#41 TYPEID Int
#41 '{'
#41 '{'
#41 OBJECTID abort
#41 '('
#41 ')'
#41 ';'
#41 NEW
#41 TYPEID Int
#41 ';'
#41 '}'
#41 '}'
#41 ';'
#43 OBJECTID cdr
#43 '('
#43 ')'
#43 ':'
#43 TYPEID List
#43 '{'
#43 '{'
#43 OBJECTID abort
#43 '('
#43 ')'
#43 ';'
#43 NEW
#43 TYPEID List
#43 ';'
#43 '}'
#43 '}'
#43 ';'
#45 OBJECTID rev
#45 '('
#45 ')'
#45 ':'
#45 TYPEID List
#45 '{'
#45 OBJECTID cdr
#45 '('
#45 ')'
#45 '}'
#45 ';'
#47 OBJECTID sort
#47 '('
#47 ')'
#47 ':'
#47 TYPEID List
#47 '{'
#47 OBJECTID cdr
#47 '('
#47 ')'
#47 '}'
#47 ';'
#49 OBJECTID insert
#49 '('
#49 OBJECTID i
#49 ':'
#49 TYPEID Int
#49 ')'
#49 ':'
#49 TYPEID List
#49 '{'
#49 OBJECTID cdr
#49 '('
#49 ')'
#49 '}'
#49 ';'
#51 OBJECTID rcons
#51 '('
#51 OBJECTID i
#51 ':'
#51 TYPEID Int
#51 ')'
#51 ':'
#51 TYPEID List
#51 '{'
#51 OBJECTID cdr
#51 '('
#51 ')'
#51 '}'
#51 ';'
#53 OBJECTID print_list
#53 '('
#53 ')'
#53 ':'
#53 TYPEID Object
#53 '{'
#53 OBJECTID abort
#53 '('
#53 ')'
#53 '}'
#53 ';'
#54 '}'
#54 ';'
#56 CLASS
#56 TYPEID Cons
#56 INHERITS
#56 TYPEID List
#56 '{'
#57 OBJECTID xcar
#57 ':'
#57 TYPEID Int
#57 ';'
#58 OBJECTID xcdr
#58 ':'
#58 TYPEID List
#58 ';'
#62 OBJECTID isNil
#62 '('
#62 ')'
#62 ':'
#62 TYPEID Bool
#62 '{'
#62 BOOL_CONST false
#62 '}'
#62 ';'
#64 OBJECTID init
#64 '('
#64 OBJECTID hd
#64 ':'
#64 TYPEID Int
#64 ','
#64 OBJECTID tl
#64 ':'
#64 TYPEID List
#64 ')'
#64 ':'
#64 TYPEID Cons
#64 '{'
#65 '{'
#66 OBJECTID xcar
#66 ASSIGN
#66 OBJECTID hd
#66 ';'
#67 OBJECTID xcdr
#67 ASSIGN
#67 OBJECTID tl
#67 ';'
#68 OBJECTID self
#68 ';'
#69 '}'
#70 '}'
#70 ';'
#72 OBJECTID car
#72 '('
#72 ')'
#72 ':'
#72 TYPEID Int
#72 '{'
#72 OBJECTID xcar
#72 '}'
#72 ';'
#74 OBJECTID cdr
#74 '('
#74 ')'
#74 ':'
#74 TYPEID List
#74 '{'
#74 OBJECTID xcdr
#74 '}'
#74 ';'
#76 OBJECTID rev
#76 '('
#76 ')'
#76 ':'
#76 TYPEID List
#76 '{'
#76 '('
#76 OBJECTID xcdr
#76 '.'
#76 OBJECTID rev
#76 '('
#76 ')'
#76 ')'
#76 '.'
#76 OBJECTID rcons
#76 '('
#76 OBJECTID xcar
#76 ')'
#76 '}'
#76 ';'
#78 OBJECTID sort
#78 '('
#78 ')'
#78 ':'
#78 TYPEID List
#78 '{'
#78 '('
#78 OBJECTID xcdr
#78 '.'
#78 OBJECTID sort
#78 '('
#78 ')'
#78 ')'
#78 '.'
#78 OBJECTID insert
#78 '('
#78 OBJECTID xcar
#78 ')'
#78 '}'
#78 ';'
#80 OBJECTID insert
#80 '('
#80 OBJECTID i
#80 ':'
#80 TYPEID Int
#80 ')'
#80 ':'
#80 TYPEID List
#80 '{'
#81 IF
#81 OBJECTID i
#81 '<'
#81 OBJECTID xcar
#81 THEN
#82 '('
#82 NEW
#82 TYPEID Cons
#82 ')'
#82 '.'
#82 OBJECTID init
#82 '('
#82 OBJECTID i
#82 ','
#82 OBJECTID self
#82 ')'
#83 ELSE
#84 '('
#84 NEW
#84 TYPEID Cons
#84 ')'
#84 '.'
#84 OBJECTID init
#84 '('
#84 OBJECTID xcar
#84 ','
#84 OBJECTID xcdr
#84 '.'
#84 OBJECTID insert
#84 '('
#84 OBJECTID i
#84 ')'
#84 ')'
#85 FI
#86 '}'
#86 ';'
#89 OBJECTID rcons
#89 '('
#89 OBJECTID i
#89 ':'
#89 TYPEID Int
#89 ')'
#89 ':'
#89 TYPEID List
#89 '{'
#89 '('
#89 NEW
#89 TYPEID Cons
#89 ')'
#89 '.'
#89 OBJECTID init
#89 '('
#89 OBJECTID xcar
#89 ','
#89 OBJECTID xcdr
#89 '.'
#89 OBJECTID rcons
#89 '('
#89 OBJECTID i
#89 ')'
#89 ')'
#89 '}'
#89 ';'
#91 OBJECTID print_list
#91 '('
#91 ')'
#91 ':'
#91 TYPEID Object
#91 '{'
#92 '{'
#93 OBJECTID out_int
#93 '('
#93 OBJECTID xcar
#93 ')'
#93 ';'
#94 OBJECTID out_string
#94 '('
#94 STR_CONST "\n"
#94 ')'
#94 ';'
#95 OBJECTID xcdr
#95 '.'
#95 OBJECTID print_list
#95 '('
#95 ')'
#95 ';'
#96 '}'
#97 '}'
#97 ';'
#98 '}'
#98 ';'
#100 CLASS
#100 TYPEID Nil
#100 INHERITS
#100 TYPEID List
#100 '{'
#101 OBJECTID isNil
#101 '('
#101 ')'
#101 ':'
#101 TYPEID Bool
#101 '{'
#101 BOOL_CONST true
#101 '}'
#101 ';'
#103 OBJECTID rev
#103 '('
#103 ')'
#103 ':'
#103 TYPEID List
#103 '{'
#103 OBJECTID self
#103 '}'
#103 ';'
#105 OBJECTID sort
#105 '('
#105 ')'
#105 ':'
#105 TYPEID List
#105 '{'
#105 OBJECTID self
#105 '}'
#105 ';'
#107 OBJECTID insert
#107 '('
#107 OBJECTID i
#107 ':'
#107 TYPEID Int
#107 ')'
#107 ':'
#107 TYPEID List
#107 '{'
#107 OBJECTID rcons
#107 '('
#107 OBJECTID i
#107 ')'
#107 '}'
#107 ';'
#109 OBJECTID rcons
#109 '('
#109 OBJECTID i
#109 ':'
#109 TYPEID Int
#109 ')'
#109 ':'
#109 TYPEID List
#109 '{'
#109 '('
#109 NEW
#109 TYPEID Cons
#109 ')'
#109 '.'
#109 OBJECTID init
#109 '('
#109 OBJECTID i
#109 ','
#109 OBJECTID self
#109 ')'
#109 '}'
#109 ';'
#111 OBJECTID print_list
#111 '('
#111 ')'
#111 ':'
#111 TYPEID Object
#111 '{'
#111 BOOL_CONST true
#111 '}'
#111 ';'
#113 '}'
#113 ';'
#116 CLASS
#116 TYPEID Main
#116 INHERITS
#116 TYPEID IO
#116 '{'
#118 OBJECTID l
#118 ':'
#118 TYPEID List
#118 ';'
#121 OBJECTID iota
#121 '('
#121 OBJECTID i
#121 ':'
#121 TYPEID Int
#121 ')'
#121 ':'
#121 TYPEID List
#121 '{'
#122 '{'
#123 OBJECTID l
#123 ASSIGN
#123 NEW
#123 TYPEID Nil
#123 ';'
#124 '('
#124 LET
#124 OBJECTID j
#124 ':'
#124 TYPEID Int
#124 ASSIGN
#124 INT_CONST 0
#124 IN
#125 WHILE
#125 OBJECTID j
#125 '<'
#125 OBJECTID i
#126 LOOP
#127 '{'
#128 OBJECTID l
#128 ASSIGN
#128 '('
#128 NEW
#128 TYPEID Cons
#128 ')'
#128 '.'
#128 OBJECTID init
#128 '('
#128 OBJECTID j
#128 ','
#128 OBJECTID l
#128 ')'
#128 ';'
#129 OBJECTID j
#129 ASSIGN
#129 OBJECTID j
#129 '+'
#129 INT_CONST 1
#129 ';'
#130 '}'
#131 POOL
#132 ')'
#132 ';'
#133 OBJECTID l
#133 ';'
#134 '}'
#135 '}'
#135 ';'
#137 OBJECTID main
#137 '('
#137 ')'
#137 ':'
#137 TYPEID Object
#137 '{'
#138 '{'
#139 OBJECTID out_string
#139 '('
#139 STR_CONST "How many numbers to sort?"
#139 ')'
#139 ';'
#140 OBJECTID iota
#140 '('
#140 OBJECTID in_int
#140 '('
#140 ')'
#140 ')'
#140 '.'
#140 OBJECTID rev
#140 '('
#140 ')'
#140 '.'
#140 OBJECTID sort
#140 '('
#140 ')'
#140 '.'
#140 OBJECTID print_list
#140 '('
#140 ')'
#140 ';'
#141 '}'
#142 '}'
#142 ';'
#143 '}'
#143 ';'
