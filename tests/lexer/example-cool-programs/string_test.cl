class Main inherits IO {
    newline: String <- "This is an escaped\
    newline in a string";

    backspace: String <- "This string includess\b a backspace";

    escaped: String <- "This string includes \random es\caped \chars"

    (* (* Why not test out multiline comments *)
        and nested comments while we're at it.
        And variable names with underscores and numbers
    *)
    form_feed1: String <- "Test with form feed \f"

    tab: String <- "Test with tab \t"

    main(): SELF_TYPE {
    out_string("Hello, World.\n")
    };
};