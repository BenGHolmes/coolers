use coolers::Lex;
use clap::{ArgEnum, Parser};

/// Simple program to greet a person
#[derive(Parser, Debug)]
#[clap(author, version, about, long_about = None)]
struct Args {
    /// Compiler stage to run
    #[clap(short, long, arg_enum)]
    stage: CompilerStage,

    #[clap(short, long, required)]
    file: String,
}

#[derive(ArgEnum, Debug, Clone)]
enum CompilerStage {
    Lexer,
}

fn main() {
    let args = Args::parse();
    match args.stage {
        Lexer => {
            println!("Running lexer")
        }
    }

}
