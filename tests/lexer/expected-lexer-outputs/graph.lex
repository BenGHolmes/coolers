#name "../examples/graph.cl"
#38 CLASS
#38 TYPEID Graph
#38 '{'
#40 OBJECTID vertices
#40 ':'
#40 TYPEID VList
#40 ASSIGN
#40 NEW
#40 TYPEID VList
#40 ';'
#41 OBJECTID edges
#41 ':'
#41 TYPEID EList
#41 ASSIGN
#41 NEW
#41 TYPEID EList
#41 ';'
#43 OBJECTID add_vertice
#43 '('
#43 OBJECTID v
#43 ':'
#43 TYPEID Vertice
#43 ')'
#43 ':'
#43 TYPEID Object
#43 '{'
#43 '{'
#44 OBJECTID edges
#44 ASSIGN
#44 OBJECTID v
#44 '.'
#44 OBJECTID outgoing
#44 '('
#44 ')'
#44 '.'
#44 OBJECTID append
#44 '('
#44 OBJECTID edges
#44 ')'
#44 ';'
#45 OBJECTID vertices
#45 ASSIGN
#45 OBJECTID vertices
#45 '.'
#45 OBJECTID cons
#45 '('
#45 OBJECTID v
#45 ')'
#45 ';'
#46 '}'
#46 '}'
#46 ';'
#48 OBJECTID print_E
#48 '('
#48 ')'
#48 ':'
#48 TYPEID Object
#48 '{'
#48 OBJECTID edges
#48 '.'
#48 OBJECTID print
#48 '('
#48 ')'
#48 '}'
#48 ';'
#49 OBJECTID print_V
#49 '('
#49 ')'
#49 ':'
#49 TYPEID Object
#49 '{'
#49 OBJECTID vertices
#49 '.'
#49 OBJECTID print
#49 '('
#49 ')'
#49 '}'
#49 ';'
#51 '}'
#51 ';'
#53 CLASS
#53 TYPEID Vertice
#53 INHERITS
#53 TYPEID IO
#53 '{'
#55 OBJECTID num
#55 ':'
#55 TYPEID Int
#55 ';'
#56 OBJECTID out
#56 ':'
#56 TYPEID EList
#56 ASSIGN
#56 NEW
#56 TYPEID EList
#56 ';'
#58 OBJECTID outgoing
#58 '('
#58 ')'
#58 ':'
#58 TYPEID EList
#58 '{'
#58 OBJECTID out
#58 '}'
#58 ';'
#60 OBJECTID number
#60 '('
#60 ')'
#60 ':'
#60 TYPEID Int
#60 '{'
#60 OBJECTID num
#60 '}'
#60 ';'
#62 OBJECTID init
#62 '('
#62 OBJECTID n
#62 ':'
#62 TYPEID Int
#62 ')'
#62 ':'
#62 TYPEID SELF_TYPE
#62 '{'
#63 '{'
#64 OBJECTID num
#64 ASSIGN
#64 OBJECTID n
#64 ';'
#65 OBJECTID self
#65 ';'
#66 '}'
#67 '}'
#67 ';'
#70 OBJECTID add_out
#70 '('
#70 OBJECTID s
#70 ':'
#70 TYPEID Edge
#70 ')'
#70 ':'
#70 TYPEID SELF_TYPE
#70 '{'
#71 '{'
#72 OBJECTID out
#72 ASSIGN
#72 OBJECTID out
#72 '.'
#72 OBJECTID cons
#72 '('
#72 OBJECTID s
#72 ')'
#72 ';'
#73 OBJECTID self
#73 ';'
#74 '}'
#75 '}'
#75 ';'
#77 OBJECTID print
#77 '('
#77 ')'
#77 ':'
#77 TYPEID Object
#77 '{'
#78 '{'
#79 OBJECTID out_int
#79 '('
#79 OBJECTID num
#79 ')'
#79 ';'
#80 OBJECTID out
#80 '.'
#80 OBJECTID print
#80 '('
#80 ')'
#80 ';'
#81 '}'
#82 '}'
#82 ';'
#84 '}'
#84 ';'
#86 CLASS
#86 TYPEID Edge
#86 INHERITS
#86 TYPEID IO
#86 '{'
#88 OBJECTID from
#88 ':'
#88 TYPEID Int
#88 ';'
#89 OBJECTID to
#89 ':'
#89 TYPEID Int
#89 ';'
#90 OBJECTID weight
#90 ':'
#90 TYPEID Int
#90 ';'
#92 OBJECTID init
#92 '('
#92 OBJECTID f
#92 ':'
#92 TYPEID Int
#92 ','
#92 OBJECTID t
#92 ':'
#92 TYPEID Int
#92 ','
#92 OBJECTID w
#92 ':'
#92 TYPEID Int
#92 ')'
#92 ':'
#92 TYPEID SELF_TYPE
#92 '{'
#93 '{'
#94 OBJECTID from
#94 ASSIGN
#94 OBJECTID f
#94 ';'
#95 OBJECTID to
#95 ASSIGN
#95 OBJECTID t
#95 ';'
#96 OBJECTID weight
#96 ASSIGN
#96 OBJECTID w
#96 ';'
#97 OBJECTID self
#97 ';'
#98 '}'
#99 '}'
#99 ';'
#101 OBJECTID print
#101 '('
#101 ')'
#101 ':'
#101 TYPEID Object
#101 '{'
#102 '{'
#103 OBJECTID out_string
#103 '('
#103 STR_CONST " ("
#103 ')'
#103 ';'
#104 OBJECTID out_int
#104 '('
#104 OBJECTID from
#104 ')'
#104 ';'
#105 OBJECTID out_string
#105 '('
#105 STR_CONST ","
#105 ')'
#105 ';'
#106 OBJECTID out_int
#106 '('
#106 OBJECTID to
#106 ')'
#106 ';'
#107 OBJECTID out_string
#107 '('
#107 STR_CONST ")"
#107 ')'
#107 ';'
#108 OBJECTID out_int
#108 '('
#108 OBJECTID weight
#108 ')'
#108 ';'
#109 '}'
#110 '}'
#110 ';'
#112 '}'
#112 ';'
#116 CLASS
#116 TYPEID EList
#116 INHERITS
#116 TYPEID IO
#116 '{'
#119 OBJECTID car
#119 ':'
#119 TYPEID Edge
#119 ';'
#121 OBJECTID isNil
#121 '('
#121 ')'
#121 ':'
#121 TYPEID Bool
#121 '{'
#121 BOOL_CONST true
#121 '}'
#121 ';'
#123 OBJECTID head
#123 '('
#123 ')'
#123 ':'
#123 TYPEID Edge
#123 '{'
#123 '{'
#123 OBJECTID abort
#123 '('
#123 ')'
#123 ';'
#123 OBJECTID car
#123 ';'
#123 '}'
#123 '}'
#123 ';'
#125 OBJECTID tail
#125 '('
#125 ')'
#125 ':'
#125 TYPEID EList
#125 '{'
#125 '{'
#125 OBJECTID abort
#125 '('
#125 ')'
#125 ';'
#125 OBJECTID self
#125 ';'
#125 '}'
#125 '}'
#125 ';'
#134 OBJECTID cons
#134 '('
#134 OBJECTID e
#134 ':'
#134 TYPEID Edge
#134 ')'
#134 ':'
#134 TYPEID EList
#134 '{'
#135 '('
#135 NEW
#135 TYPEID ECons
#135 ')'
#135 '.'
#135 OBJECTID init
#135 '('
#135 OBJECTID e
#135 ','
#135 OBJECTID self
#135 ')'
#136 '}'
#136 ';'
#138 OBJECTID append
#138 '('
#138 OBJECTID l
#138 ':'
#138 TYPEID EList
#138 ')'
#138 ':'
#138 TYPEID EList
#138 '{'
#139 IF
#139 OBJECTID self
#139 '.'
#139 OBJECTID isNil
#139 '('
#139 ')'
#139 THEN
#139 OBJECTID l
#140 ELSE
#140 OBJECTID tail
#140 '('
#140 ')'
#140 '.'
#140 OBJECTID append
#140 '('
#140 OBJECTID l
#140 ')'
#140 '.'
#140 OBJECTID cons
#140 '('
#140 OBJECTID head
#140 '('
#140 ')'
#140 ')'
#141 FI
#142 '}'
#142 ';'
#144 OBJECTID print
#144 '('
#144 ')'
#144 ':'
#144 TYPEID Object
#144 '{'
#145 OBJECTID out_string
#145 '('
#145 STR_CONST "\n"
#145 ')'
#146 '}'
#146 ';'
#148 '}'
#148 ';'
#164 CLASS
#164 TYPEID ECons
#164 INHERITS
#164 TYPEID EList
#164 '{'
#166 OBJECTID cdr
#166 ':'
#166 TYPEID EList
#166 ';'
#168 OBJECTID isNil
#168 '('
#168 ')'
#168 ':'
#168 TYPEID Bool
#168 '{'
#168 BOOL_CONST false
#168 '}'
#168 ';'
#170 OBJECTID head
#170 '('
#170 ')'
#170 ':'
#170 TYPEID Edge
#170 '{'
#170 OBJECTID car
#170 '}'
#170 ';'
#172 OBJECTID tail
#172 '('
#172 ')'
#172 ':'
#172 TYPEID EList
#172 '{'
#172 OBJECTID cdr
#172 '}'
#172 ';'
#174 OBJECTID init
#174 '('
#174 OBJECTID e
#174 ':'
#174 TYPEID Edge
#174 ','
#174 OBJECTID rest
#174 ':'
#174 TYPEID EList
#174 ')'
#174 ':'
#174 TYPEID EList
#174 '{'
#175 '{'
#176 OBJECTID car
#176 ASSIGN
#176 OBJECTID e
#176 ';'
#177 OBJECTID cdr
#177 ASSIGN
#177 OBJECTID rest
#177 ';'
#178 OBJECTID self
#178 ';'
#179 '}'
#180 '}'
#180 ';'
#182 OBJECTID print
#182 '('
#182 ')'
#182 ':'
#182 TYPEID Object
#182 '{'
#183 '{'
#184 OBJECTID car
#184 '.'
#184 OBJECTID print
#184 '('
#184 ')'
#184 ';'
#185 OBJECTID cdr
#185 '.'
#185 OBJECTID print
#185 '('
#185 ')'
#185 ';'
#186 '}'
#187 '}'
#187 ';'
#189 '}'
#189 ';'
#194 CLASS
#194 TYPEID VList
#194 INHERITS
#194 TYPEID IO
#194 '{'
#197 OBJECTID car
#197 ':'
#197 TYPEID Vertice
#197 ';'
#199 OBJECTID isNil
#199 '('
#199 ')'
#199 ':'
#199 TYPEID Bool
#199 '{'
#199 BOOL_CONST true
#199 '}'
#199 ';'
#201 OBJECTID head
#201 '('
#201 ')'
#201 ':'
#201 TYPEID Vertice
#201 '{'
#201 '{'
#201 OBJECTID abort
#201 '('
#201 ')'
#201 ';'
#201 OBJECTID car
#201 ';'
#201 '}'
#201 '}'
#201 ';'
#203 OBJECTID tail
#203 '('
#203 ')'
#203 ':'
#203 TYPEID VList
#203 '{'
#203 '{'
#203 OBJECTID abort
#203 '('
#203 ')'
#203 ';'
#203 OBJECTID self
#203 ';'
#203 '}'
#203 '}'
#203 ';'
#212 OBJECTID cons
#212 '('
#212 OBJECTID v
#212 ':'
#212 TYPEID Vertice
#212 ')'
#212 ':'
#212 TYPEID VList
#212 '{'
#213 '('
#213 NEW
#213 TYPEID VCons
#213 ')'
#213 '.'
#213 OBJECTID init
#213 '('
#213 OBJECTID v
#213 ','
#213 OBJECTID self
#213 ')'
#214 '}'
#214 ';'
#216 OBJECTID print
#216 '('
#216 ')'
#216 ':'
#216 TYPEID Object
#216 '{'
#216 OBJECTID out_string
#216 '('
#216 STR_CONST "\n"
#216 ')'
#216 '}'
#216 ';'
#218 '}'
#218 ';'
#221 CLASS
#221 TYPEID VCons
#221 INHERITS
#221 TYPEID VList
#221 '{'
#223 OBJECTID cdr
#223 ':'
#223 TYPEID VList
#223 ';'
#225 OBJECTID isNil
#225 '('
#225 ')'
#225 ':'
#225 TYPEID Bool
#225 '{'
#225 BOOL_CONST false
#225 '}'
#225 ';'
#227 OBJECTID head
#227 '('
#227 ')'
#227 ':'
#227 TYPEID Vertice
#227 '{'
#227 OBJECTID car
#227 '}'
#227 ';'
#229 OBJECTID tail
#229 '('
#229 ')'
#229 ':'
#229 TYPEID VList
#229 '{'
#229 OBJECTID cdr
#229 '}'
#229 ';'
#231 OBJECTID init
#231 '('
#231 OBJECTID v
#231 ':'
#231 TYPEID Vertice
#231 ','
#231 OBJECTID rest
#231 ':'
#231 TYPEID VList
#231 ')'
#231 ':'
#231 TYPEID VList
#231 '{'
#232 '{'
#233 OBJECTID car
#233 ASSIGN
#233 OBJECTID v
#233 ';'
#234 OBJECTID cdr
#234 ASSIGN
#234 OBJECTID rest
#234 ';'
#235 OBJECTID self
#235 ';'
#236 '}'
#237 '}'
#237 ';'
#239 OBJECTID print
#239 '('
#239 ')'
#239 ':'
#239 TYPEID Object
#239 '{'
#240 '{'
#241 OBJECTID car
#241 '.'
#241 OBJECTID print
#241 '('
#241 ')'
#241 ';'
#242 OBJECTID cdr
#242 '.'
#242 OBJECTID print
#242 '('
#242 ')'
#242 ';'
#243 '}'
#244 '}'
#244 ';'
#246 '}'
#246 ';'
#249 CLASS
#249 TYPEID Parse
#249 INHERITS
#249 TYPEID IO
#249 '{'
#252 OBJECTID boolop
#252 ':'
#252 TYPEID BoolOp
#252 ASSIGN
#252 NEW
#252 TYPEID BoolOp
#252 ';'
#256 OBJECTID read_input
#256 '('
#256 ')'
#256 ':'
#256 TYPEID Graph
#256 '{'
#258 '('
#258 LET
#258 OBJECTID g
#258 ':'
#258 TYPEID Graph
#258 ASSIGN
#258 NEW
#258 TYPEID Graph
#258 IN
#258 '{'
#259 '('
#259 LET
#259 OBJECTID line
#259 ':'
#259 TYPEID String
#259 ASSIGN
#259 OBJECTID in_string
#259 '('
#259 ')'
#259 IN
#260 WHILE
#260 '('
#260 OBJECTID boolop
#260 '.'
#260 OBJECTID and
#260 '('
#260 NOT
#260 OBJECTID line
#260 '='
#260 STR_CONST "\n"
#260 ','
#260 NOT
#260 OBJECTID line
#260 '='
#260 STR_CONST ""
#260 ')'
#260 ')'
#260 LOOP
#260 '{'
#263 OBJECTID g
#263 '.'
#263 OBJECTID add_vertice
#263 '('
#263 OBJECTID parse_line
#263 '('
#263 OBJECTID line
#263 ')'
#263 ')'
#263 ';'
#264 OBJECTID line
#264 ASSIGN
#264 OBJECTID in_string
#264 '('
#264 ')'
#264 ';'
#265 '}'
#265 POOL
#266 ')'
#266 ';'
#267 OBJECTID g
#267 ';'
#268 '}'
#268 ')'
#269 '}'
#269 ';'
#272 OBJECTID parse_line
#272 '('
#272 OBJECTID s
#272 ':'
#272 TYPEID String
#272 ')'
#272 ':'
#272 TYPEID Vertice
#272 '{'
#273 '('
#273 LET
#273 OBJECTID v
#273 ':'
#273 TYPEID Vertice
#273 ASSIGN
#273 '('
#273 NEW
#273 TYPEID Vertice
#273 ')'
#273 '.'
#273 OBJECTID init
#273 '('
#273 OBJECTID a2i
#273 '('
#273 OBJECTID s
#273 ')'
#273 ')'
#273 IN
#273 '{'
#274 WHILE
#274 '('
#274 NOT
#274 OBJECTID rest
#274 '.'
#274 OBJECTID length
#274 '('
#274 ')'
#274 '='
#274 INT_CONST 0
#274 ')'
#274 LOOP
#274 '{'
#277 '('
#277 LET
#277 OBJECTID succ
#277 ':'
#277 TYPEID Int
#277 ASSIGN
#277 OBJECTID a2i
#277 '('
#277 OBJECTID rest
#277 ')'
#277 IN
#277 '('
#277 LET
#278 OBJECTID weight
#278 ':'
#278 TYPEID Int
#278 ASSIGN
#278 OBJECTID a2i
#278 '('
#278 OBJECTID rest
#278 ')'
#279 IN
#280 OBJECTID v
#280 '.'
#280 OBJECTID add_out
#280 '('
#280 NEW
#280 TYPEID Edge
#280 '.'
#280 OBJECTID init
#280 '('
#280 OBJECTID v
#280 '.'
#280 OBJECTID number
#280 '('
#280 ')'
#280 ','
#281 OBJECTID succ
#281 ','
#282 OBJECTID weight
#282 ')'
#282 ')'
#283 ')'
#283 ')'
#283 ';'
#284 '}'
#284 POOL
#284 ';'
#285 OBJECTID v
#285 ';'
#286 '}'
#287 ')'
#288 '}'
#288 ';'
#290 OBJECTID c2i
#290 '('
#290 OBJECTID char
#290 ':'
#290 TYPEID String
#290 ')'
#290 ':'
#290 TYPEID Int
#290 '{'
#291 IF
#291 OBJECTID char
#291 '='
#291 STR_CONST "0"
#291 THEN
#291 INT_CONST 0
#291 ELSE
#292 IF
#292 OBJECTID char
#292 '='
#292 STR_CONST "1"
#292 THEN
#292 INT_CONST 1
#292 ELSE
#293 IF
#293 OBJECTID char
#293 '='
#293 STR_CONST "2"
#293 THEN
#293 INT_CONST 2
#293 ELSE
#294 IF
#294 OBJECTID char
#294 '='
#294 STR_CONST "3"
#294 THEN
#294 INT_CONST 3
#294 ELSE
#295 IF
#295 OBJECTID char
#295 '='
#295 STR_CONST "4"
#295 THEN
#295 INT_CONST 4
#295 ELSE
#296 IF
#296 OBJECTID char
#296 '='
#296 STR_CONST "5"
#296 THEN
#296 INT_CONST 5
#296 ELSE
#297 IF
#297 OBJECTID char
#297 '='
#297 STR_CONST "6"
#297 THEN
#297 INT_CONST 6
#297 ELSE
#298 IF
#298 OBJECTID char
#298 '='
#298 STR_CONST "7"
#298 THEN
#298 INT_CONST 7
#298 ELSE
#299 IF
#299 OBJECTID char
#299 '='
#299 STR_CONST "8"
#299 THEN
#299 INT_CONST 8
#299 ELSE
#300 IF
#300 OBJECTID char
#300 '='
#300 STR_CONST "9"
#300 THEN
#300 INT_CONST 9
#300 ELSE
#301 '{'
#301 OBJECTID abort
#301 '('
#301 ')'
#301 ';'
#301 INT_CONST 0
#301 ';'
#301 '}'
#302 FI
#302 FI
#302 FI
#302 FI
#302 FI
#302 FI
#302 FI
#302 FI
#302 FI
#302 FI
#303 '}'
#303 ';'
#305 OBJECTID rest
#305 ':'
#305 TYPEID String
#305 ';'
#307 OBJECTID a2i
#307 '('
#307 OBJECTID s
#307 ':'
#307 TYPEID String
#307 ')'
#307 ':'
#307 TYPEID Int
#307 '{'
#308 IF
#308 OBJECTID s
#308 '.'
#308 OBJECTID length
#308 '('
#308 ')'
#308 '='
#308 INT_CONST 0
#308 THEN
#308 INT_CONST 0
#308 ELSE
#309 IF
#309 OBJECTID s
#309 '.'
#309 OBJECTID substr
#309 '('
#309 INT_CONST 0
#309 ','
#309 INT_CONST 1
#309 ')'
#309 '='
#309 STR_CONST "-"
#309 THEN
#309 '~'
#309 OBJECTID a2i_aux
#309 '('
#309 OBJECTID s
#309 '.'
#309 OBJECTID substr
#309 '('
#309 INT_CONST 1
#309 ','
#309 OBJECTID s
#309 '.'
#309 OBJECTID length
#309 '('
#309 ')'
#309 '-'
#309 INT_CONST 1
#309 ')'
#309 ')'
#309 ELSE
#310 IF
#310 OBJECTID s
#310 '.'
#310 OBJECTID substr
#310 '('
#310 INT_CONST 0
#310 ','
#310 INT_CONST 1
#310 ')'
#310 '='
#310 STR_CONST " "
#310 THEN
#310 OBJECTID a2i
#310 '('
#310 OBJECTID s
#310 '.'
#310 OBJECTID substr
#310 '('
#310 INT_CONST 1
#310 ','
#310 OBJECTID s
#310 '.'
#310 OBJECTID length
#310 '('
#310 ')'
#310 '-'
#310 INT_CONST 1
#310 ')'
#310 ')'
#310 ELSE
#311 OBJECTID a2i_aux
#311 '('
#311 OBJECTID s
#311 ')'
#312 FI
#312 FI
#312 FI
#313 '}'
#313 ';'
#321 OBJECTID a2i_aux
#321 '('
#321 OBJECTID s
#321 ':'
#321 TYPEID String
#321 ')'
#321 ':'
#321 TYPEID Int
#321 '{'
#322 '('
#322 LET
#322 OBJECTID int
#322 ':'
#322 TYPEID Int
#322 ASSIGN
#322 INT_CONST 0
#322 IN
#323 '{'
#324 '('
#324 LET
#324 OBJECTID j
#324 ':'
#324 TYPEID Int
#324 ASSIGN
#324 OBJECTID s
#324 '.'
#324 OBJECTID length
#324 '('
#324 ')'
#324 IN
#325 '('
#325 LET
#325 OBJECTID i
#325 ':'
#325 TYPEID Int
#325 ASSIGN
#325 INT_CONST 0
#325 IN
#326 WHILE
#326 OBJECTID i
#326 '<'
#326 OBJECTID j
#326 LOOP
#327 '('
#327 LET
#327 OBJECTID c
#327 ':'
#327 TYPEID String
#327 ASSIGN
#327 OBJECTID s
#327 '.'
#327 OBJECTID substr
#327 '('
#327 OBJECTID i
#327 ','
#327 INT_CONST 1
#327 ')'
#327 IN
#328 IF
#328 '('
#328 OBJECTID c
#328 '='
#328 STR_CONST " "
#328 ')'
#328 THEN
#329 '{'
#330 OBJECTID rest
#330 ASSIGN
#330 OBJECTID s
#330 '.'
#330 OBJECTID substr
#330 '('
#330 OBJECTID i
#330 '+'
#330 INT_CONST 1
#330 ','
#330 OBJECTID s
#330 '.'
#330 OBJECTID length
#330 '('
#330 ')'
#330 '-'
#330 OBJECTID i
#330 '-'
#330 INT_CONST 1
#330 ')'
#330 ';'
#331 OBJECTID i
#331 ASSIGN
#331 OBJECTID j
#331 ';'
#332 '}'
#333 ELSE
#333 IF
#333 '('
#333 OBJECTID c
#333 '='
#333 STR_CONST ","
#333 ')'
#333 THEN
#334 '{'
#335 OBJECTID rest
#335 ASSIGN
#335 OBJECTID s
#335 '.'
#335 OBJECTID substr
#335 '('
#335 OBJECTID i
#335 '+'
#335 INT_CONST 1
#335 ','
#335 OBJECTID s
#335 '.'
#335 OBJECTID length
#335 '('
#335 ')'
#335 '-'
#335 OBJECTID i
#335 '-'
#335 INT_CONST 1
#335 ')'
#335 ';'
#336 OBJECTID i
#336 ASSIGN
#336 OBJECTID j
#336 ';'
#337 '}'
#338 ELSE
#339 '{'
#340 OBJECTID int
#340 ASSIGN
#340 OBJECTID int
#340 '*'
#340 INT_CONST 10
#340 '+'
#340 OBJECTID c2i
#340 '('
#340 OBJECTID s
#340 '.'
#340 OBJECTID substr
#340 '('
#340 OBJECTID i
#340 ','
#340 INT_CONST 1
#340 ')'
#340 ')'
#340 ';'
#341 OBJECTID i
#341 ASSIGN
#341 OBJECTID i
#341 '+'
#341 INT_CONST 1
#341 ';'
#342 IF
#342 OBJECTID i
#342 '='
#342 OBJECTID j
#342 THEN
#342 OBJECTID rest
#342 ASSIGN
#342 STR_CONST ""
#342 ELSE
#342 STR_CONST ""
#342 FI
#342 ';'
#343 '}'
#344 FI
#344 FI
#345 ')'
#346 POOL
#347 ')'
#348 ')'
#348 ';'
#349 OBJECTID int
#349 ';'
#350 '}'
#351 ')'
#352 '}'
#352 ';'
#354 '}'
#354 ';'
#357 CLASS
#357 TYPEID Main
#357 INHERITS
#357 TYPEID Parse
#357 '{'
#359 OBJECTID g
#359 ':'
#359 TYPEID Graph
#359 ASSIGN
#359 OBJECTID read_input
#359 '('
#359 ')'
#359 ';'
#361 OBJECTID main
#361 '('
#361 ')'
#361 ':'
#361 TYPEID Object
#361 '{'
#362 '{'
#363 OBJECTID g
#363 '.'
#363 OBJECTID print_V
#363 '('
#363 ')'
#363 ';'
#364 OBJECTID g
#364 '.'
#364 OBJECTID print_E
#364 '('
#364 ')'
#364 ';'
#365 '}'
#366 '}'
#366 ';'
#368 '}'
#368 ';'
#370 CLASS
#370 TYPEID BoolOp
#370 '{'
#372 OBJECTID and
#372 '('
#372 OBJECTID b1
#372 ':'
#372 TYPEID Bool
#372 ','
#372 OBJECTID b2
#372 ':'
#372 TYPEID Bool
#372 ')'
#372 ':'
#372 TYPEID Bool
#372 '{'
#373 IF
#373 OBJECTID b1
#373 THEN
#373 OBJECTID b2
#373 ELSE
#373 BOOL_CONST false
#373 FI
#374 '}'
#374 ';'
#377 OBJECTID or
#377 '('
#377 OBJECTID b1
#377 ':'
#377 TYPEID Bool
#377 ','
#377 OBJECTID b2
#377 ':'
#377 TYPEID Bool
#377 ')'
#377 ':'
#377 TYPEID Bool
#377 '{'
#378 IF
#378 OBJECTID b1
#378 THEN
#378 BOOL_CONST true
#378 ELSE
#378 OBJECTID b2
#378 FI
#379 '}'
#379 ';'
#381 '}'
#381 ';'
