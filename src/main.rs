use clap::{ArgEnum, Parser};
use coolers::{CharBuffer, lex};
use std::fs;

/// Simple program to greet a person
#[derive(Parser, Debug)]
#[clap(author, version, about, long_about = None)]
struct Args {
    /// Compiler stage to run
    #[clap(arg_enum, short, long)]
    stage: Option<CompilerStage>,

    /// COOL file to compile
    #[clap(validator = assert_cl_file)]
    file: String,
}

#[derive(ArgEnum, Debug, Clone)]
enum CompilerStage {
    Lexer,
}

fn main() {
    let args = Args::parse();
    match args.stage {
        Some(CompilerStage::Lexer) => {
            let input = fs::read_to_string(args.file).unwrap();
            let buf = CharBuffer::new(&input);

            let tokens = lex(buf);
            for t in tokens {
                println!("{}", t)
            }
        }
        None => println!("Compiling {}", args.file),
    }
}

/// Return Ok if file ends with ".cl" extension, otherwise error
fn assert_cl_file(s: &str) -> Result<(), String> {
    if s.ends_with(".cl") {
        Ok(())
    } else {
        Err(format!("{} is not a COOL (.cl) file.", s))
    }
}
