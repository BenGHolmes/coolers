#name "examples/string_test.cl"
#1 CLASS
#1 TYPEID Main
#1 INHERITS
#1 TYPEID IO
#1 '{'
#2 OBJECTID newline
#2 ':'
#2 TYPEID String
#2 ASSIGN
#3 STR_CONST "This is an escaped\n    newline in a string"
#3 ';'
#5 OBJECTID backspace
#5 ':'
#5 TYPEID String
#5 ASSIGN
#5 STR_CONST "This string includess\b a backspace"
#5 ';'
#7 OBJECTID escaped
#7 ':'
#7 TYPEID String
#7 ASSIGN
#7 STR_CONST "This string includes random escaped chars"
#13 OBJECTID form_feed1
#13 ':'
#13 TYPEID String
#13 ASSIGN
#13 STR_CONST "Test with form feed \f"
#15 OBJECTID tab
#15 ':'
#15 TYPEID String
#15 ASSIGN
#15 STR_CONST "Test with tab \t"
#17 OBJECTID main
#17 '('
#17 ')'
#17 ':'
#17 TYPEID SELF_TYPE
#17 '{'
#18 OBJECTID out_string
#18 '('
#18 STR_CONST "Hello, World.\n"
#18 ')'
#19 '}'
#19 ';'
#20 '}'
#20 ';'
