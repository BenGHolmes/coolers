#name "../examples/lam.cl"
#21 CLASS
#21 TYPEID VarList
#21 INHERITS
#21 TYPEID IO
#21 '{'
#22 OBJECTID isNil
#22 '('
#22 ')'
#22 ':'
#22 TYPEID Bool
#22 '{'
#22 BOOL_CONST true
#22 '}'
#22 ';'
#23 OBJECTID head
#23 '('
#23 ')'
#23 ':'
#23 TYPEID Variable
#23 '{'
#23 '{'
#23 OBJECTID abort
#23 '('
#23 ')'
#23 ';'
#23 NEW
#23 TYPEID Variable
#23 ';'
#23 '}'
#23 '}'
#23 ';'
#24 OBJECTID tail
#24 '('
#24 ')'
#24 ':'
#24 TYPEID VarList
#24 '{'
#24 '{'
#24 OBJECTID abort
#24 '('
#24 ')'
#24 ';'
#24 NEW
#24 TYPEID VarList
#24 ';'
#24 '}'
#24 '}'
#24 ';'
#25 OBJECTID add
#25 '('
#25 OBJECTID x
#25 ':'
#25 TYPEID Variable
#25 ')'
#25 ':'
#25 TYPEID VarList
#25 '{'
#25 '('
#25 NEW
#25 TYPEID VarListNE
#25 ')'
#25 '.'
#25 OBJECTID init
#25 '('
#25 OBJECTID x
#25 ','
#25 OBJECTID self
#25 ')'
#25 '}'
#25 ';'
#26 OBJECTID print
#26 '('
#26 ')'
#26 ':'
#26 TYPEID SELF_TYPE
#26 '{'
#26 OBJECTID out_string
#26 '('
#26 STR_CONST "\n"
#26 ')'
#26 '}'
#26 ';'
#27 '}'
#27 ';'
#29 CLASS
#29 TYPEID VarListNE
#29 INHERITS
#29 TYPEID VarList
#29 '{'
#30 OBJECTID x
#30 ':'
#30 TYPEID Variable
#30 ';'
#31 OBJECTID rest
#31 ':'
#31 TYPEID VarList
#31 ';'
#32 OBJECTID isNil
#32 '('
#32 ')'
#32 ':'
#32 TYPEID Bool
#32 '{'
#32 BOOL_CONST false
#32 '}'
#32 ';'
#33 OBJECTID head
#33 '('
#33 ')'
#33 ':'
#33 TYPEID Variable
#33 '{'
#33 OBJECTID x
#33 '}'
#33 ';'
#34 OBJECTID tail
#34 '('
#34 ')'
#34 ':'
#34 TYPEID VarList
#34 '{'
#34 OBJECTID rest
#34 '}'
#34 ';'
#35 OBJECTID init
#35 '('
#35 OBJECTID y
#35 ':'
#35 TYPEID Variable
#35 ','
#35 OBJECTID r
#35 ':'
#35 TYPEID VarList
#35 ')'
#35 ':'
#35 TYPEID VarListNE
#35 '{'
#35 '{'
#35 OBJECTID x
#35 ASSIGN
#35 OBJECTID y
#35 ';'
#35 OBJECTID rest
#35 ASSIGN
#35 OBJECTID r
#35 ';'
#35 OBJECTID self
#35 ';'
#35 '}'
#35 '}'
#35 ';'
#36 OBJECTID print
#36 '('
#36 ')'
#36 ':'
#36 TYPEID SELF_TYPE
#36 '{'
#36 '{'
#36 OBJECTID x
#36 '.'
#36 OBJECTID print_self
#36 '('
#36 ')'
#36 ';'
#36 OBJECTID out_string
#36 '('
#36 STR_CONST " "
#36 ')'
#36 ';'
#37 OBJECTID rest
#37 '.'
#37 OBJECTID print
#37 '('
#37 ')'
#37 ';'
#37 OBJECTID self
#37 ';'
#37 '}'
#37 '}'
#37 ';'
#38 '}'
#38 ';'
#44 CLASS
#44 TYPEID LambdaList
#44 '{'
#45 OBJECTID isNil
#45 '('
#45 ')'
#45 ':'
#45 TYPEID Bool
#45 '{'
#45 BOOL_CONST true
#45 '}'
#45 ';'
#46 OBJECTID headE
#46 '('
#46 ')'
#46 ':'
#46 TYPEID VarList
#46 '{'
#46 '{'
#46 OBJECTID abort
#46 '('
#46 ')'
#46 ';'
#46 NEW
#46 TYPEID VarList
#46 ';'
#46 '}'
#46 '}'
#46 ';'
#47 OBJECTID headC
#47 '('
#47 ')'
#47 ':'
#47 TYPEID Lambda
#47 '{'
#47 '{'
#47 OBJECTID abort
#47 '('
#47 ')'
#47 ';'
#47 NEW
#47 TYPEID Lambda
#47 ';'
#47 '}'
#47 '}'
#47 ';'
#48 OBJECTID headN
#48 '('
#48 ')'
#48 ':'
#48 TYPEID Int
#48 '{'
#48 '{'
#48 OBJECTID abort
#48 '('
#48 ')'
#48 ';'
#48 INT_CONST 0
#48 ';'
#48 '}'
#48 '}'
#48 ';'
#49 OBJECTID tail
#49 '('
#49 ')'
#49 ':'
#49 TYPEID LambdaList
#49 '{'
#49 '{'
#49 OBJECTID abort
#49 '('
#49 ')'
#49 ';'
#49 NEW
#49 TYPEID LambdaList
#49 ';'
#49 '}'
#49 '}'
#49 ';'
#50 OBJECTID add
#50 '('
#50 OBJECTID e
#50 ':'
#50 TYPEID VarList
#50 ','
#50 OBJECTID x
#50 ':'
#50 TYPEID Lambda
#50 ','
#50 OBJECTID n
#50 ':'
#50 TYPEID Int
#50 ')'
#50 ':'
#50 TYPEID LambdaList
#50 '{'
#51 '('
#51 NEW
#51 TYPEID LambdaListNE
#51 ')'
#51 '.'
#51 OBJECTID init
#51 '('
#51 OBJECTID e
#51 ','
#51 OBJECTID x
#51 ','
#51 OBJECTID n
#51 ','
#51 OBJECTID self
#51 ')'
#52 '}'
#52 ';'
#53 '}'
#53 ';'
#55 CLASS
#55 TYPEID LambdaListNE
#55 INHERITS
#55 TYPEID LambdaList
#55 '{'
#56 OBJECTID lam
#56 ':'
#56 TYPEID Lambda
#56 ';'
#57 OBJECTID num
#57 ':'
#57 TYPEID Int
#57 ';'
#58 OBJECTID env
#58 ':'
#58 TYPEID VarList
#58 ';'
#59 OBJECTID rest
#59 ':'
#59 TYPEID LambdaList
#59 ';'
#60 OBJECTID isNil
#60 '('
#60 ')'
#60 ':'
#60 TYPEID Bool
#60 '{'
#60 BOOL_CONST false
#60 '}'
#60 ';'
#61 OBJECTID headE
#61 '('
#61 ')'
#61 ':'
#61 TYPEID VarList
#61 '{'
#61 OBJECTID env
#61 '}'
#61 ';'
#62 OBJECTID headC
#62 '('
#62 ')'
#62 ':'
#62 TYPEID Lambda
#62 '{'
#62 OBJECTID lam
#62 '}'
#62 ';'
#63 OBJECTID headN
#63 '('
#63 ')'
#63 ':'
#63 TYPEID Int
#63 '{'
#63 OBJECTID num
#63 '}'
#63 ';'
#64 OBJECTID tail
#64 '('
#64 ')'
#64 ':'
#64 TYPEID LambdaList
#64 '{'
#64 OBJECTID rest
#64 '}'
#64 ';'
#65 OBJECTID init
#65 '('
#65 OBJECTID e
#65 ':'
#65 TYPEID VarList
#65 ','
#65 OBJECTID l
#65 ':'
#65 TYPEID Lambda
#65 ','
#65 OBJECTID n
#65 ':'
#65 TYPEID Int
#65 ','
#65 OBJECTID r
#65 ':'
#65 TYPEID LambdaList
#65 ')'
#65 ':'
#65 TYPEID LambdaListNE
#65 '{'
#66 '{'
#67 OBJECTID env
#67 ASSIGN
#67 OBJECTID e
#67 ';'
#68 OBJECTID lam
#68 ASSIGN
#68 OBJECTID l
#68 ';'
#69 OBJECTID num
#69 ASSIGN
#69 OBJECTID n
#69 ';'
#70 OBJECTID rest
#70 ASSIGN
#70 OBJECTID r
#70 ';'
#71 OBJECTID self
#71 ';'
#72 '}'
#73 '}'
#73 ';'
#74 '}'
#74 ';'
#76 CLASS
#76 TYPEID LambdaListRef
#76 '{'
#77 OBJECTID nextNum
#77 ':'
#77 TYPEID Int
#77 ASSIGN
#77 INT_CONST 0
#77 ';'
#78 OBJECTID l
#78 ':'
#78 TYPEID LambdaList
#78 ';'
#79 OBJECTID isNil
#79 '('
#79 ')'
#79 ':'
#79 TYPEID Bool
#79 '{'
#79 OBJECTID l
#79 '.'
#79 OBJECTID isNil
#79 '('
#79 ')'
#79 '}'
#79 ';'
#80 OBJECTID headE
#80 '('
#80 ')'
#80 ':'
#80 TYPEID VarList
#80 '{'
#80 OBJECTID l
#80 '.'
#80 OBJECTID headE
#80 '('
#80 ')'
#80 '}'
#80 ';'
#81 OBJECTID headC
#81 '('
#81 ')'
#81 ':'
#81 TYPEID Lambda
#81 '{'
#81 OBJECTID l
#81 '.'
#81 OBJECTID headC
#81 '('
#81 ')'
#81 '}'
#81 ';'
#82 OBJECTID headN
#82 '('
#82 ')'
#82 ':'
#82 TYPEID Int
#82 '{'
#82 OBJECTID l
#82 '.'
#82 OBJECTID headN
#82 '('
#82 ')'
#82 '}'
#82 ';'
#83 OBJECTID reset
#83 '('
#83 ')'
#83 ':'
#83 TYPEID SELF_TYPE
#83 '{'
#84 '{'
#85 OBJECTID nextNum
#85 ASSIGN
#85 INT_CONST 0
#85 ';'
#86 OBJECTID l
#86 ASSIGN
#86 NEW
#86 TYPEID LambdaList
#86 ';'
#87 OBJECTID self
#87 ';'
#88 '}'
#89 '}'
#89 ';'
#90 OBJECTID add
#90 '('
#90 OBJECTID env
#90 ':'
#90 TYPEID VarList
#90 ','
#90 OBJECTID c
#90 ':'
#90 TYPEID Lambda
#90 ')'
#90 ':'
#90 TYPEID Int
#90 '{'
#91 '{'
#92 OBJECTID l
#92 ASSIGN
#92 OBJECTID l
#92 '.'
#92 OBJECTID add
#92 '('
#92 OBJECTID env
#92 ','
#92 OBJECTID c
#92 ','
#92 OBJECTID nextNum
#92 ')'
#92 ';'
#93 OBJECTID nextNum
#93 ASSIGN
#93 OBJECTID nextNum
#93 '+'
#93 INT_CONST 1
#93 ';'
#94 OBJECTID nextNum
#94 '-'
#94 INT_CONST 1
#94 ';'
#95 '}'
#96 '}'
#96 ';'
#97 OBJECTID removeHead
#97 '('
#97 ')'
#97 ':'
#97 TYPEID SELF_TYPE
#97 '{'
#98 '{'
#99 OBJECTID l
#99 ASSIGN
#99 OBJECTID l
#99 '.'
#99 OBJECTID tail
#99 '('
#99 ')'
#99 ';'
#100 OBJECTID self
#100 ';'
#101 '}'
#102 '}'
#102 ';'
#103 '}'
#103 ';'
#111 CLASS
#111 TYPEID Expr
#111 INHERITS
#111 TYPEID IO
#111 '{'
#114 OBJECTID print_self
#114 '('
#114 ')'
#114 ':'
#114 TYPEID SELF_TYPE
#114 '{'
#115 '{'
#116 OBJECTID out_string
#116 '('
#116 STR_CONST "\nError: Expr is pure virtual; can't print self\n"
#116 ')'
#116 ';'
#117 OBJECTID abort
#117 '('
#117 ')'
#117 ';'
#118 OBJECTID self
#118 ';'
#119 '}'
#120 '}'
#120 ';'
#123 OBJECTID beta
#123 '('
#123 ')'
#123 ':'
#123 TYPEID Expr
#123 '{'
#124 '{'
#125 OBJECTID out_string
#125 '('
#125 STR_CONST "\nError: Expr is pure virtual; can't beta-reduce\n"
#125 ')'
#125 ';'
#126 OBJECTID abort
#126 '('
#126 ')'
#126 ';'
#127 OBJECTID self
#127 ';'
#128 '}'
#129 '}'
#129 ';'
#132 OBJECTID substitute
#132 '('
#132 OBJECTID x
#132 ':'
#132 TYPEID Variable
#132 ','
#132 OBJECTID e
#132 ':'
#132 TYPEID Expr
#132 ')'
#132 ':'
#132 TYPEID Expr
#132 '{'
#133 '{'
#134 OBJECTID out_string
#134 '('
#134 STR_CONST "\nError: Expr is pure virtual; can't substitute\n"
#134 ')'
#134 ';'
#135 OBJECTID abort
#135 '('
#135 ')'
#135 ';'
#136 OBJECTID self
#136 ';'
#137 '}'
#138 '}'
#138 ';'
#141 OBJECTID gen_code
#141 '('
#141 OBJECTID env
#141 ':'
#141 TYPEID VarList
#141 ','
#141 OBJECTID closures
#141 ':'
#141 TYPEID LambdaListRef
#141 ')'
#141 ':'
#141 TYPEID SELF_TYPE
#141 '{'
#142 '{'
#143 OBJECTID out_string
#143 '('
#143 STR_CONST "\nError: Expr is pure virtual; can't gen_code\n"
#143 ')'
#143 ';'
#144 OBJECTID abort
#144 '('
#144 ')'
#144 ';'
#145 OBJECTID self
#145 ';'
#146 '}'
#147 '}'
#147 ';'
#148 '}'
#148 ';'
#153 CLASS
#153 TYPEID Variable
#153 INHERITS
#153 TYPEID Expr
#153 '{'
#154 OBJECTID name
#154 ':'
#154 TYPEID String
#154 ';'
#156 OBJECTID init
#156 '('
#156 OBJECTID n
#156 ':'
#156 TYPEID String
#156 ')'
#156 ':'
#156 TYPEID Variable
#156 '{'
#157 '{'
#158 OBJECTID name
#158 ASSIGN
#158 OBJECTID n
#158 ';'
#159 OBJECTID self
#159 ';'
#160 '}'
#161 '}'
#161 ';'
#163 OBJECTID print_self
#163 '('
#163 ')'
#163 ':'
#163 TYPEID SELF_TYPE
#163 '{'
#164 OBJECTID out_string
#164 '('
#164 OBJECTID name
#164 ')'
#165 '}'
#165 ';'
#167 OBJECTID beta
#167 '('
#167 ')'
#167 ':'
#167 TYPEID Expr
#167 '{'
#167 OBJECTID self
#167 '}'
#167 ';'
#169 OBJECTID substitute
#169 '('
#169 OBJECTID x
#169 ':'
#169 TYPEID Variable
#169 ','
#169 OBJECTID e
#169 ':'
#169 TYPEID Expr
#169 ')'
#169 ':'
#169 TYPEID Expr
#169 '{'
#170 IF
#170 OBJECTID x
#170 '='
#170 OBJECTID self
#170 THEN
#170 OBJECTID e
#170 ELSE
#170 OBJECTID self
#170 FI
#171 '}'
#171 ';'
#173 OBJECTID gen_code
#173 '('
#173 OBJECTID env
#173 ':'
#173 TYPEID VarList
#173 ','
#173 OBJECTID closures
#173 ':'
#173 TYPEID LambdaListRef
#173 ')'
#173 ':'
#173 TYPEID SELF_TYPE
#173 '{'
#174 LET
#174 OBJECTID cur_env
#174 ':'
#174 TYPEID VarList
#174 ASSIGN
#174 OBJECTID env
#174 IN
#175 '{'
#175 WHILE
#175 '('
#175 IF
#175 OBJECTID cur_env
#175 '.'
#175 OBJECTID isNil
#175 '('
#175 ')'
#175 THEN
#176 BOOL_CONST false
#177 ELSE
#178 NOT
#178 '('
#178 OBJECTID cur_env
#178 '.'
#178 OBJECTID head
#178 '('
#178 ')'
#178 '='
#178 OBJECTID self
#178 ')'
#179 FI
#179 ')'
#179 LOOP
#180 '{'
#180 OBJECTID out_string
#180 '('
#180 STR_CONST "get_parent()."
#180 ')'
#180 ';'
#181 OBJECTID cur_env
#181 ASSIGN
#181 OBJECTID cur_env
#181 '.'
#181 OBJECTID tail
#181 '('
#181 ')'
#181 ';'
#182 '}'
#183 POOL
#183 ';'
#184 IF
#184 OBJECTID cur_env
#184 '.'
#184 OBJECTID isNil
#184 '('
#184 ')'
#184 THEN
#185 '{'
#185 OBJECTID out_string
#185 '('
#185 STR_CONST "Error:  free occurrence of "
#185 ')'
#185 ';'
#186 OBJECTID print_self
#186 '('
#186 ')'
#186 ';'
#187 OBJECTID out_string
#187 '('
#187 STR_CONST "\n"
#187 ')'
#187 ';'
#188 OBJECTID abort
#188 '('
#188 ')'
#188 ';'
#189 OBJECTID self
#189 ';'
#190 '}'
#191 ELSE
#192 OBJECTID out_string
#192 '('
#192 STR_CONST "get_x()"
#192 ')'
#193 FI
#193 ';'
#194 '}'
#195 '}'
#195 ';'
#196 '}'
#196 ';'
#201 CLASS
#201 TYPEID Lambda
#201 INHERITS
#201 TYPEID Expr
#201 '{'
#202 OBJECTID arg
#202 ':'
#202 TYPEID Variable
#202 ';'
#203 OBJECTID body
#203 ':'
#203 TYPEID Expr
#203 ';'
#205 OBJECTID init
#205 '('
#205 OBJECTID a
#205 ':'
#205 TYPEID Variable
#205 ','
#205 OBJECTID b
#205 ':'
#205 TYPEID Expr
#205 ')'
#205 ':'
#205 TYPEID Lambda
#205 '{'
#206 '{'
#207 OBJECTID arg
#207 ASSIGN
#207 OBJECTID a
#207 ';'
#208 OBJECTID body
#208 ASSIGN
#208 OBJECTID b
#208 ';'
#209 OBJECTID self
#209 ';'
#210 '}'
#211 '}'
#211 ';'
#213 OBJECTID print_self
#213 '('
#213 ')'
#213 ':'
#213 TYPEID SELF_TYPE
#213 '{'
#214 '{'
#215 OBJECTID out_string
#215 '('
#215 STR_CONST "\\"
#215 ')'
#215 ';'
#216 OBJECTID arg
#216 '.'
#216 OBJECTID print_self
#216 '('
#216 ')'
#216 ';'
#217 OBJECTID out_string
#217 '('
#217 STR_CONST "."
#217 ')'
#217 ';'
#218 OBJECTID body
#218 '.'
#218 OBJECTID print_self
#218 '('
#218 ')'
#218 ';'
#219 OBJECTID self
#219 ';'
#220 '}'
#221 '}'
#221 ';'
#223 OBJECTID beta
#223 '('
#223 ')'
#223 ':'
#223 TYPEID Expr
#223 '{'
#223 OBJECTID self
#223 '}'
#223 ';'
#225 OBJECTID apply
#225 '('
#225 OBJECTID actual
#225 ':'
#225 TYPEID Expr
#225 ')'
#225 ':'
#225 TYPEID Expr
#225 '{'
#226 OBJECTID body
#226 '.'
#226 OBJECTID substitute
#226 '('
#226 OBJECTID arg
#226 ','
#226 OBJECTID actual
#226 ')'
#227 '}'
#227 ';'
#230 OBJECTID substitute
#230 '('
#230 OBJECTID x
#230 ':'
#230 TYPEID Variable
#230 ','
#230 OBJECTID e
#230 ':'
#230 TYPEID Expr
#230 ')'
#230 ':'
#230 TYPEID Expr
#230 '{'
#231 IF
#231 OBJECTID x
#231 '='
#231 OBJECTID arg
#231 THEN
#232 OBJECTID self
#233 ELSE
#234 LET
#234 OBJECTID new_body
#234 ':'
#234 TYPEID Expr
#234 ASSIGN
#234 OBJECTID body
#234 '.'
#234 OBJECTID substitute
#234 '('
#234 OBJECTID x
#234 ','
#234 OBJECTID e
#234 ')'
#234 ','
#235 OBJECTID new_lam
#235 ':'
#235 TYPEID Lambda
#235 ASSIGN
#235 NEW
#235 TYPEID Lambda
#235 IN
#236 OBJECTID new_lam
#236 '.'
#236 OBJECTID init
#236 '('
#236 OBJECTID arg
#236 ','
#236 OBJECTID new_body
#236 ')'
#237 FI
#238 '}'
#238 ';'
#240 OBJECTID gen_code
#240 '('
#240 OBJECTID env
#240 ':'
#240 TYPEID VarList
#240 ','
#240 OBJECTID closures
#240 ':'
#240 TYPEID LambdaListRef
#240 ')'
#240 ':'
#240 TYPEID SELF_TYPE
#240 '{'
#241 '{'
#242 OBJECTID out_string
#242 '('
#242 STR_CONST "((new Closure"
#242 ')'
#242 ';'
#243 OBJECTID out_int
#243 '('
#243 OBJECTID closures
#243 '.'
#243 OBJECTID add
#243 '('
#243 OBJECTID env
#243 ','
#243 OBJECTID self
#243 ')'
#243 ')'
#243 ';'
#244 OBJECTID out_string
#244 '('
#244 STR_CONST ").init("
#244 ')'
#244 ';'
#245 IF
#245 OBJECTID env
#245 '.'
#245 OBJECTID isNil
#245 '('
#245 ')'
#245 THEN
#246 OBJECTID out_string
#246 '('
#246 STR_CONST "new Closure))"
#246 ')'
#247 ELSE
#248 OBJECTID out_string
#248 '('
#248 STR_CONST "self))"
#248 ')'
#248 FI
#248 ';'
#249 OBJECTID self
#249 ';'
#250 '}'
#251 '}'
#251 ';'
#253 OBJECTID gen_closure_code
#253 '('
#253 OBJECTID n
#253 ':'
#253 TYPEID Int
#253 ','
#253 OBJECTID env
#253 ':'
#253 TYPEID VarList
#253 ','
#254 OBJECTID closures
#254 ':'
#254 TYPEID LambdaListRef
#254 ')'
#254 ':'
#254 TYPEID SELF_TYPE
#254 '{'
#255 '{'
#256 OBJECTID out_string
#256 '('
#256 STR_CONST "class Closure"
#256 ')'
#256 ';'
#257 OBJECTID out_int
#257 '('
#257 OBJECTID n
#257 ')'
#257 ';'
#258 OBJECTID out_string
#258 '('
#258 STR_CONST " inherits Closure {\n"
#258 ')'
#258 ';'
#259 OBJECTID out_string
#259 '('
#259 STR_CONST "  apply(y : EvalObject) : EvalObject {\n"
#259 ')'
#259 ';'
#260 OBJECTID out_string
#260 '('
#260 STR_CONST "    { out_string(\"Applying closure "
#260 ')'
#260 ';'
#261 OBJECTID out_int
#261 '('
#261 OBJECTID n
#261 ')'
#261 ';'
#262 OBJECTID out_string
#262 '('
#262 STR_CONST "\\n\");\n"
#262 ')'
#262 ';'
#263 OBJECTID out_string
#263 '('
#263 STR_CONST "      x <- y;\n"
#263 ')'
#263 ';'
#264 OBJECTID body
#264 '.'
#264 OBJECTID gen_code
#264 '('
#264 OBJECTID env
#264 '.'
#264 OBJECTID add
#264 '('
#264 OBJECTID arg
#264 ')'
#264 ','
#264 OBJECTID closures
#264 ')'
#264 ';'
#265 OBJECTID out_string
#265 '('
#265 STR_CONST ";}};\n"
#265 ')'
#265 ';'
#266 OBJECTID out_string
#266 '('
#266 STR_CONST "};\n"
#266 ')'
#266 ';'
#267 '}'
#268 '}'
#268 ';'
#269 '}'
#269 ';'
#274 CLASS
#274 TYPEID App
#274 INHERITS
#274 TYPEID Expr
#274 '{'
#275 OBJECTID fun
#275 ':'
#275 TYPEID Expr
#275 ';'
#276 OBJECTID arg
#276 ':'
#276 TYPEID Expr
#276 ';'
#278 OBJECTID init
#278 '('
#278 OBJECTID f
#278 ':'
#278 TYPEID Expr
#278 ','
#278 OBJECTID a
#278 ':'
#278 TYPEID Expr
#278 ')'
#278 ':'
#278 TYPEID App
#278 '{'
#279 '{'
#280 OBJECTID fun
#280 ASSIGN
#280 OBJECTID f
#280 ';'
#281 OBJECTID arg
#281 ASSIGN
#281 OBJECTID a
#281 ';'
#282 OBJECTID self
#282 ';'
#283 '}'
#284 '}'
#284 ';'
#286 OBJECTID print_self
#286 '('
#286 ')'
#286 ':'
#286 TYPEID SELF_TYPE
#286 '{'
#287 '{'
#288 OBJECTID out_string
#288 '('
#288 STR_CONST "(("
#288 ')'
#288 ';'
#289 OBJECTID fun
#289 '.'
#289 OBJECTID print_self
#289 '('
#289 ')'
#289 ';'
#290 OBJECTID out_string
#290 '('
#290 STR_CONST ")@("
#290 ')'
#290 ';'
#291 OBJECTID arg
#291 '.'
#291 OBJECTID print_self
#291 '('
#291 ')'
#291 ';'
#292 OBJECTID out_string
#292 '('
#292 STR_CONST "))"
#292 ')'
#292 ';'
#293 OBJECTID self
#293 ';'
#294 '}'
#295 '}'
#295 ';'
#297 OBJECTID beta
#297 '('
#297 ')'
#297 ':'
#297 TYPEID Expr
#297 '{'
#298 CASE
#298 OBJECTID fun
#298 OF
#299 OBJECTID l
#299 ':'
#299 TYPEID Lambda
#299 DARROW
#299 OBJECTID l
#299 '.'
#299 OBJECTID apply
#299 '('
#299 OBJECTID arg
#299 ')'
#299 ';'
#300 OBJECTID e
#300 ':'
#300 TYPEID Expr
#300 DARROW
#301 LET
#301 OBJECTID new_fun
#301 ':'
#301 TYPEID Expr
#301 ASSIGN
#301 OBJECTID fun
#301 '.'
#301 OBJECTID beta
#301 '('
#301 ')'
#301 ','
#302 OBJECTID new_app
#302 ':'
#302 TYPEID App
#302 ASSIGN
#302 NEW
#302 TYPEID App
#302 IN
#303 OBJECTID new_app
#303 '.'
#303 OBJECTID init
#303 '('
#303 OBJECTID new_fun
#303 ','
#303 OBJECTID arg
#303 ')'
#303 ';'
#304 ESAC
#305 '}'
#305 ';'
#307 OBJECTID substitute
#307 '('
#307 OBJECTID x
#307 ':'
#307 TYPEID Variable
#307 ','
#307 OBJECTID e
#307 ':'
#307 TYPEID Expr
#307 ')'
#307 ':'
#307 TYPEID Expr
#307 '{'
#308 LET
#308 OBJECTID new_fun
#308 ':'
#308 TYPEID Expr
#308 ASSIGN
#308 OBJECTID fun
#308 '.'
#308 OBJECTID substitute
#308 '('
#308 OBJECTID x
#308 ','
#308 OBJECTID e
#308 ')'
#308 ','
#309 OBJECTID new_arg
#309 ':'
#309 TYPEID Expr
#309 ASSIGN
#309 OBJECTID arg
#309 '.'
#309 OBJECTID substitute
#309 '('
#309 OBJECTID x
#309 ','
#309 OBJECTID e
#309 ')'
#309 ','
#310 OBJECTID new_app
#310 ':'
#310 TYPEID App
#310 ASSIGN
#310 NEW
#310 TYPEID App
#310 IN
#311 OBJECTID new_app
#311 '.'
#311 OBJECTID init
#311 '('
#311 OBJECTID new_fun
#311 ','
#311 OBJECTID new_arg
#311 ')'
#312 '}'
#312 ';'
#314 OBJECTID gen_code
#314 '('
#314 OBJECTID env
#314 ':'
#314 TYPEID VarList
#314 ','
#314 OBJECTID closures
#314 ':'
#314 TYPEID LambdaListRef
#314 ')'
#314 ':'
#314 TYPEID SELF_TYPE
#314 '{'
#315 '{'
#316 OBJECTID out_string
#316 '('
#316 STR_CONST "(let x : EvalObject <- "
#316 ')'
#316 ';'
#317 OBJECTID fun
#317 '.'
#317 OBJECTID gen_code
#317 '('
#317 OBJECTID env
#317 ','
#317 OBJECTID closures
#317 ')'
#317 ';'
#318 OBJECTID out_string
#318 '('
#318 STR_CONST ",\n"
#318 ')'
#318 ';'
#319 OBJECTID out_string
#319 '('
#319 STR_CONST "     y : EvalObject <- "
#319 ')'
#319 ';'
#320 OBJECTID arg
#320 '.'
#320 OBJECTID gen_code
#320 '('
#320 OBJECTID env
#320 ','
#320 OBJECTID closures
#320 ')'
#320 ';'
#321 OBJECTID out_string
#321 '('
#321 STR_CONST " in\n"
#321 ')'
#321 ';'
#322 OBJECTID out_string
#322 '('
#322 STR_CONST "  case x of\n"
#322 ')'
#322 ';'
#323 OBJECTID out_string
#323 '('
#323 STR_CONST "    c : Closure => c.apply(y);\n"
#323 ')'
#323 ';'
#324 OBJECTID out_string
#324 '('
#324 STR_CONST "    o : Object => { abort(); new EvalObject; };\n"
#324 ')'
#324 ';'
#325 OBJECTID out_string
#325 '('
#325 STR_CONST "  esac)"
#325 ')'
#325 ';'
#326 '}'
#327 '}'
#327 ';'
#328 '}'
#328 ';'
#335 CLASS
#335 TYPEID Term
#335 INHERITS
#335 TYPEID IO
#335 '{'
#339 OBJECTID var
#339 '('
#339 OBJECTID x
#339 ':'
#339 TYPEID String
#339 ')'
#339 ':'
#339 TYPEID Variable
#339 '{'
#340 LET
#340 OBJECTID v
#340 ':'
#340 TYPEID Variable
#340 ASSIGN
#340 NEW
#340 TYPEID Variable
#340 IN
#341 OBJECTID v
#341 '.'
#341 OBJECTID init
#341 '('
#341 OBJECTID x
#341 ')'
#342 '}'
#342 ';'
#344 OBJECTID lam
#344 '('
#344 OBJECTID x
#344 ':'
#344 TYPEID Variable
#344 ','
#344 OBJECTID e
#344 ':'
#344 TYPEID Expr
#344 ')'
#344 ':'
#344 TYPEID Lambda
#344 '{'
#345 LET
#345 OBJECTID l
#345 ':'
#345 TYPEID Lambda
#345 ASSIGN
#345 NEW
#345 TYPEID Lambda
#345 IN
#346 OBJECTID l
#346 '.'
#346 OBJECTID init
#346 '('
#346 OBJECTID x
#346 ','
#346 OBJECTID e
#346 ')'
#347 '}'
#347 ';'
#349 OBJECTID app
#349 '('
#349 OBJECTID e1
#349 ':'
#349 TYPEID Expr
#349 ','
#349 OBJECTID e2
#349 ':'
#349 TYPEID Expr
#349 ')'
#349 ':'
#349 TYPEID App
#349 '{'
#350 LET
#350 OBJECTID a
#350 ':'
#350 TYPEID App
#350 ASSIGN
#350 NEW
#350 TYPEID App
#350 IN
#351 OBJECTID a
#351 '.'
#351 OBJECTID init
#351 '('
#351 OBJECTID e1
#351 ','
#351 OBJECTID e2
#351 ')'
#352 '}'
#352 ';'
#357 OBJECTID i
#357 '('
#357 ')'
#357 ':'
#357 TYPEID Expr
#357 '{'
#358 LET
#358 OBJECTID x
#358 ':'
#358 TYPEID Variable
#358 ASSIGN
#358 OBJECTID var
#358 '('
#358 STR_CONST "x"
#358 ')'
#358 IN
#359 OBJECTID lam
#359 '('
#359 OBJECTID x
#359 ','
#359 OBJECTID x
#359 ')'
#360 '}'
#360 ';'
#362 OBJECTID k
#362 '('
#362 ')'
#362 ':'
#362 TYPEID Expr
#362 '{'
#363 LET
#363 OBJECTID x
#363 ':'
#363 TYPEID Variable
#363 ASSIGN
#363 OBJECTID var
#363 '('
#363 STR_CONST "x"
#363 ')'
#363 ','
#364 OBJECTID y
#364 ':'
#364 TYPEID Variable
#364 ASSIGN
#364 OBJECTID var
#364 '('
#364 STR_CONST "y"
#364 ')'
#364 IN
#365 OBJECTID lam
#365 '('
#365 OBJECTID x
#365 ','
#365 OBJECTID lam
#365 '('
#365 OBJECTID y
#365 ','
#365 OBJECTID x
#365 ')'
#365 ')'
#366 '}'
#366 ';'
#368 OBJECTID s
#368 '('
#368 ')'
#368 ':'
#368 TYPEID Expr
#368 '{'
#369 LET
#369 OBJECTID x
#369 ':'
#369 TYPEID Variable
#369 ASSIGN
#369 OBJECTID var
#369 '('
#369 STR_CONST "x"
#369 ')'
#369 ','
#370 OBJECTID y
#370 ':'
#370 TYPEID Variable
#370 ASSIGN
#370 OBJECTID var
#370 '('
#370 STR_CONST "y"
#370 ')'
#370 ','
#371 OBJECTID z
#371 ':'
#371 TYPEID Variable
#371 ASSIGN
#371 OBJECTID var
#371 '('
#371 STR_CONST "z"
#371 ')'
#371 IN
#372 OBJECTID lam
#372 '('
#372 OBJECTID x
#372 ','
#372 OBJECTID lam
#372 '('
#372 OBJECTID y
#372 ','
#372 OBJECTID lam
#372 '('
#372 OBJECTID z
#372 ','
#372 OBJECTID app
#372 '('
#372 OBJECTID app
#372 '('
#372 OBJECTID x
#372 ','
#372 OBJECTID z
#372 ')'
#372 ','
#372 OBJECTID app
#372 '('
#372 OBJECTID y
#372 ','
#372 OBJECTID z
#372 ')'
#372 ')'
#372 ')'
#372 ')'
#372 ')'
#373 '}'
#373 ';'
#375 '}'
#375 ';'
#383 CLASS
#383 TYPEID Main
#383 INHERITS
#383 TYPEID Term
#383 '{'
#385 OBJECTID beta_reduce
#385 '('
#385 OBJECTID e
#385 ':'
#385 TYPEID Expr
#385 ')'
#385 ':'
#385 TYPEID Expr
#385 '{'
#386 '{'
#387 OBJECTID out_string
#387 '('
#387 STR_CONST "beta-reduce: "
#387 ')'
#387 ';'
#388 OBJECTID e
#388 '.'
#388 OBJECTID print_self
#388 '('
#388 ')'
#388 ';'
#389 LET
#389 OBJECTID done
#389 ':'
#389 TYPEID Bool
#389 ASSIGN
#389 BOOL_CONST false
#389 ','
#390 OBJECTID new_expr
#390 ':'
#390 TYPEID Expr
#390 IN
#391 '{'
#392 WHILE
#392 '('
#392 NOT
#392 OBJECTID done
#392 ')'
#392 LOOP
#393 '{'
#394 OBJECTID new_expr
#394 ASSIGN
#394 OBJECTID e
#394 '.'
#394 OBJECTID beta
#394 '('
#394 ')'
#394 ';'
#395 IF
#395 '('
#395 OBJECTID new_expr
#395 '='
#395 OBJECTID e
#395 ')'
#395 THEN
#396 OBJECTID done
#396 ASSIGN
#396 BOOL_CONST true
#397 ELSE
#398 '{'
#399 OBJECTID e
#399 ASSIGN
#399 OBJECTID new_expr
#399 ';'
#400 OBJECTID out_string
#400 '('
#400 STR_CONST " =>\n"
#400 ')'
#400 ';'
#401 OBJECTID e
#401 '.'
#401 OBJECTID print_self
#401 '('
#401 ')'
#401 ';'
#402 '}'
#403 FI
#403 ';'
#404 '}'
#405 POOL
#405 ';'
#406 OBJECTID out_string
#406 '('
#406 STR_CONST "\n"
#406 ')'
#406 ';'
#407 OBJECTID e
#407 ';'
#408 '}'
#408 ';'
#409 '}'
#410 '}'
#410 ';'
#412 OBJECTID eval_class
#412 '('
#412 ')'
#412 ':'
#412 TYPEID SELF_TYPE
#412 '{'
#413 '{'
#414 OBJECTID out_string
#414 '('
#414 STR_CONST "class EvalObject inherits IO {\n"
#414 ')'
#414 ';'
#415 OBJECTID out_string
#415 '('
#415 STR_CONST "  eval() : EvalObject { { abort(); self; } };\n"
#415 ')'
#415 ';'
#416 OBJECTID out_string
#416 '('
#416 STR_CONST "};\n"
#416 ')'
#416 ';'
#417 '}'
#418 '}'
#418 ';'
#420 OBJECTID closure_class
#420 '('
#420 ')'
#420 ':'
#420 TYPEID SELF_TYPE
#420 '{'
#421 '{'
#422 OBJECTID out_string
#422 '('
#422 STR_CONST "class Closure inherits EvalObject {\n"
#422 ')'
#422 ';'
#423 OBJECTID out_string
#423 '('
#423 STR_CONST "  parent : Closure;\n"
#423 ')'
#423 ';'
#424 OBJECTID out_string
#424 '('
#424 STR_CONST "  x : EvalObject;\n"
#424 ')'
#424 ';'
#425 OBJECTID out_string
#425 '('
#425 STR_CONST "  get_parent() : Closure { parent };\n"
#425 ')'
#425 ';'
#426 OBJECTID out_string
#426 '('
#426 STR_CONST "  get_x() : EvalObject { x };\n"
#426 ')'
#426 ';'
#427 OBJECTID out_string
#427 '('
#427 STR_CONST "  init(p : Closure) : Closure {{ parent <- p; self; }};\n"
#427 ')'
#427 ';'
#428 OBJECTID out_string
#428 '('
#428 STR_CONST "  apply(y : EvalObject) : EvalObject { { abort(); self; } };\n"
#428 ')'
#428 ';'
#429 OBJECTID out_string
#429 '('
#429 STR_CONST "};\n"
#429 ')'
#429 ';'
#430 '}'
#431 '}'
#431 ';'
#433 OBJECTID gen_code
#433 '('
#433 OBJECTID e
#433 ':'
#433 TYPEID Expr
#433 ')'
#433 ':'
#433 TYPEID SELF_TYPE
#433 '{'
#434 LET
#434 OBJECTID cl
#434 ':'
#434 TYPEID LambdaListRef
#434 ASSIGN
#434 '('
#434 NEW
#434 TYPEID LambdaListRef
#434 ')'
#434 '.'
#434 OBJECTID reset
#434 '('
#434 ')'
#434 IN
#435 '{'
#436 OBJECTID out_string
#436 '('
#436 STR_CONST "Generating code for "
#436 ')'
#436 ';'
#437 OBJECTID e
#437 '.'
#437 OBJECTID print_self
#437 '('
#437 ')'
#437 ';'
#438 OBJECTID out_string
#438 '('
#438 STR_CONST "\n------------------cut here------------------\n"
#438 ')'
#438 ';'
#439 OBJECTID out_string
#439 '('
#439 STR_CONST "(*Generated by lam.cl (Jeff Foster, March 2000)*)\n"
#439 ')'
#439 ';'
#440 OBJECTID eval_class
#440 '('
#440 ')'
#440 ';'
#441 OBJECTID closure_class
#441 '('
#441 ')'
#441 ';'
#442 OBJECTID out_string
#442 '('
#442 STR_CONST "class Main {\n"
#442 ')'
#442 ';'
#443 OBJECTID out_string
#443 '('
#443 STR_CONST "  main() : EvalObject {\n"
#443 ')'
#443 ';'
#444 OBJECTID e
#444 '.'
#444 OBJECTID gen_code
#444 '('
#444 NEW
#444 TYPEID VarList
#444 ','
#444 OBJECTID cl
#444 ')'
#444 ';'
#445 OBJECTID out_string
#445 '('
#445 STR_CONST "\n};\n};\n"
#445 ')'
#445 ';'
#446 WHILE
#446 '('
#446 NOT
#446 '('
#446 OBJECTID cl
#446 '.'
#446 OBJECTID isNil
#446 '('
#446 ')'
#446 ')'
#446 ')'
#446 LOOP
#447 LET
#447 OBJECTID e
#447 ':'
#447 TYPEID VarList
#447 ASSIGN
#447 OBJECTID cl
#447 '.'
#447 OBJECTID headE
#447 '('
#447 ')'
#447 ','
#448 OBJECTID c
#448 ':'
#448 TYPEID Lambda
#448 ASSIGN
#448 OBJECTID cl
#448 '.'
#448 OBJECTID headC
#448 '('
#448 ')'
#448 ','
#449 OBJECTID n
#449 ':'
#449 TYPEID Int
#449 ASSIGN
#449 OBJECTID cl
#449 '.'
#449 OBJECTID headN
#449 '('
#449 ')'
#449 IN
#450 '{'
#451 OBJECTID cl
#451 '.'
#451 OBJECTID removeHead
#451 '('
#451 ')'
#451 ';'
#452 OBJECTID c
#452 '.'
#452 OBJECTID gen_closure_code
#452 '('
#452 OBJECTID n
#452 ','
#452 OBJECTID e
#452 ','
#452 OBJECTID cl
#452 ')'
#452 ';'
#453 '}'
#454 POOL
#454 ';'
#455 OBJECTID out_string
#455 '('
#455 STR_CONST "\n------------------cut here------------------\n"
#455 ')'
#455 ';'
#456 '}'
#457 '}'
#457 ';'
#459 OBJECTID main
#459 '('
#459 ')'
#459 ':'
#459 TYPEID Int
#459 '{'
#460 '{'
#461 OBJECTID i
#461 '('
#461 ')'
#461 '.'
#461 OBJECTID print_self
#461 '('
#461 ')'
#461 ';'
#462 OBJECTID out_string
#462 '('
#462 STR_CONST "\n"
#462 ')'
#462 ';'
#463 OBJECTID k
#463 '('
#463 ')'
#463 '.'
#463 OBJECTID print_self
#463 '('
#463 ')'
#463 ';'
#464 OBJECTID out_string
#464 '('
#464 STR_CONST "\n"
#464 ')'
#464 ';'
#465 OBJECTID s
#465 '('
#465 ')'
#465 '.'
#465 OBJECTID print_self
#465 '('
#465 ')'
#465 ';'
#466 OBJECTID out_string
#466 '('
#466 STR_CONST "\n"
#466 ')'
#466 ';'
#467 OBJECTID beta_reduce
#467 '('
#467 OBJECTID app
#467 '('
#467 OBJECTID app
#467 '('
#467 OBJECTID app
#467 '('
#467 OBJECTID s
#467 '('
#467 ')'
#467 ','
#467 OBJECTID k
#467 '('
#467 ')'
#467 ')'
#467 ','
#467 OBJECTID i
#467 '('
#467 ')'
#467 ')'
#467 ','
#467 OBJECTID i
#467 '('
#467 ')'
#467 ')'
#467 ')'
#467 ';'
#468 OBJECTID beta_reduce
#468 '('
#468 OBJECTID app
#468 '('
#468 OBJECTID app
#468 '('
#468 OBJECTID k
#468 '('
#468 ')'
#468 ','
#468 OBJECTID i
#468 '('
#468 ')'
#468 ')'
#468 ','
#468 OBJECTID i
#468 '('
#468 ')'
#468 ')'
#468 ')'
#468 ';'
#469 OBJECTID gen_code
#469 '('
#469 OBJECTID app
#469 '('
#469 OBJECTID i
#469 '('
#469 ')'
#469 ','
#469 OBJECTID i
#469 '('
#469 ')'
#469 ')'
#469 ')'
#469 ';'
#470 OBJECTID gen_code
#470 '('
#470 OBJECTID app
#470 '('
#470 OBJECTID app
#470 '('
#470 OBJECTID app
#470 '('
#470 OBJECTID s
#470 '('
#470 ')'
#470 ','
#470 OBJECTID k
#470 '('
#470 ')'
#470 ')'
#470 ','
#470 OBJECTID i
#470 '('
#470 ')'
#470 ')'
#470 ','
#470 OBJECTID i
#470 '('
#470 ')'
#470 ')'
#470 ')'
#470 ';'
#471 OBJECTID gen_code
#471 '('
#471 OBJECTID app
#471 '('
#471 OBJECTID app
#471 '('
#471 OBJECTID app
#471 '('
#471 OBJECTID app
#471 '('
#471 OBJECTID app
#471 '('
#471 OBJECTID app
#471 '('
#471 OBJECTID app
#471 '('
#471 OBJECTID app
#471 '('
#471 OBJECTID i
#471 '('
#471 ')'
#471 ','
#471 OBJECTID k
#471 '('
#471 ')'
#471 ')'
#471 ','
#471 OBJECTID s
#471 '('
#471 ')'
#471 ')'
#471 ','
#471 OBJECTID s
#471 '('
#471 ')'
#471 ')'
#471 ','
#472 OBJECTID k
#472 '('
#472 ')'
#472 ')'
#472 ','
#472 OBJECTID s
#472 '('
#472 ')'
#472 ')'
#472 ','
#472 OBJECTID i
#472 '('
#472 ')'
#472 ')'
#472 ','
#472 OBJECTID k
#472 '('
#472 ')'
#472 ')'
#472 ','
#472 OBJECTID i
#472 '('
#472 ')'
#472 ')'
#472 ')'
#472 ';'
#473 OBJECTID gen_code
#473 '('
#473 OBJECTID app
#473 '('
#473 OBJECTID app
#473 '('
#473 OBJECTID i
#473 '('
#473 ')'
#473 ','
#473 OBJECTID app
#473 '('
#473 OBJECTID k
#473 '('
#473 ')'
#473 ','
#473 OBJECTID s
#473 '('
#473 ')'
#473 ')'
#473 ')'
#473 ','
#473 OBJECTID app
#473 '('
#473 OBJECTID k
#473 '('
#473 ')'
#473 ','
#473 OBJECTID app
#473 '('
#473 OBJECTID s
#473 '('
#473 ')'
#473 ','
#473 OBJECTID s
#473 '('
#473 ')'
#473 ')'
#473 ')'
#473 ')'
#473 ')'
#473 ';'
#474 INT_CONST 0
#474 ';'
#475 '}'
#476 '}'
#476 ';'
#477 '}'
#477 ';'
