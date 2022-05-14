mod test {
    use std::fs;
    use coolers::{CharBuffer,lex};
    use std::io::{BufReader,BufRead};
    use std::fs::File;

    fn test_lex(filename: &str) {
        let cl_path = format!("./tests/lexer/example-cool-programs/{}.cl", filename);
        let input = fs::read_to_string(cl_path).unwrap();
        let tokens = lex(CharBuffer::new(&input));
    
        let lex_path  = format!("./tests/lexer/expected-lexer-outputs/{}.lex", filename);
        let buffer = BufReader::new(File::open(lex_path).expect("failed to open file"));
        
        let mut lines = buffer.lines();
        lines.next();
    
        for t in tokens {
            let got_line = format!("{}", t);
            let exp_line = lines.next().unwrap().unwrap();
            assert_eq!(got_line, exp_line);
        }
    }

    #[test]
    fn arith(){
        test_lex("arith");
    }

    #[test]
    fn atoi_test(){
        test_lex("atoi_test");
    }

    #[test]
    fn atoi(){
        test_lex("atoi");
    }

    #[test]
    fn book_list(){
        test_lex("book_list");
    }

    #[test]
    fn cells(){
        test_lex("cells");
    }

    #[test]
    fn complex(){
        test_lex("complex");
    }

    #[test]
    fn cool(){
        test_lex("cool");
    }

    #[test]
    fn graph(){
        test_lex("graph");
    }

    #[test]
    fn hairyscary(){
        test_lex("hairyscary");
    }

    #[test]
    fn hello_world(){
        test_lex("hello_world");
    }

    #[test]
    fn io(){
        test_lex("io");
    }

    #[test]
    fn lam(){
        test_lex("lam");
    }

    #[test]
    fn life(){
        test_lex("life");
    }

    #[test]
    fn list(){
        test_lex("list");
    }

    #[test]
    fn new_complex(){
        test_lex("new_complex");
    }

    #[test]
    fn palindrome(){
        test_lex("palindrome");
    }

    #[test]
    fn primes(){
        test_lex("primes");
    }

    #[test]
    fn sort_list(){
        test_lex("sort_list");
    }

    #[test]
    fn string_test(){
        test_lex("string_test");
    }
}

