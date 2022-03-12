use std::{
    fmt,
    fs::File,
    io::{BufRead, BufReader, Lines},
    str::Chars,
};

/// Parsed token.
/// Stores the kind of token parsed as well as the line number of the program
pub struct Token {
    pub kind: TokenKind,
    pub line: usize,
}

impl Token {
    fn new(kind: TokenKind, line: usize) -> Token {
        Token { kind, line }
    }
}

impl fmt::Display for Token {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "#{} {}", self.line, self.kind)
    }
}

/// Enum for the lexeme types.
pub enum TokenKind {
    // Literals
    /// Integer literal,
    Integer(usize),
    /// Strings
    String(String),

    // Identifiers
    /// Type identifier (begins with capital letter)
    TypeIdent(String),
    /// Type identifier "SELF_TYPE"
    SelfType,
    /// Object identifier (begins with lower case letter)
    ObjIdent(String),
    /// Identifier "self"
    SelfIdent,

    // Keywords
    Class,
    Inherits,
    IsVoid,
    True,
    False,
    Not,
    If,
    Then,
    Else,
    Fi,
    Loop,
    Pool,
    While,
    Case,
    Esac,
    Let,
    New,
    In,
    Of,

    // One-char tokens
    /// ;
    Semi,
    /// ","
    Comma,
    /// "."
    Dot,
    /// "("
    OpenParen,
    /// ")"
    CloseParen,
    /// "{"
    OpenBrace,
    /// "}"
    CloseBrace,
    /// "@"
    At,
    /// "~"
    Tilde,
    /// ":"
    Colon,
    /// "="
    Eq,
    /// "<"
    Lt,
    /// "-"
    Minus,
    /// "+"
    Plus,
    /// "*"
    Star,
    /// "/"
    Slash,

    // Two-char tokens
    /// "<-"
    Assign,
    /// "=>"
    DArrow,
    /// <=
    LE,
}

impl fmt::Display for TokenKind {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        match self {
            Self::Integer(i) => write!(f, "INT_CONST {}", i),
            Self::String(s) => write!(f, "STR_CONST \"{}\"", s),
            Self::TypeIdent(id) => write!(f, "TYPEID {}", id),
            Self::SelfType => write!(f, "TYPEID SELF_TYPE"),
            Self::ObjIdent(id) => write!(f, "OBJECTID {}", id),
            Self::SelfIdent => write!(f, "OBJECTID self"),
            Self::Class => write!(f, "CLASS"),
            Self::Inherits => write!(f, "INHERITS"),
            Self::IsVoid => write!(f, "ISVOID"),
            Self::True => write!(f, "BOOL_CONST true"),
            Self::False => write!(f, "BOOL_CONST false"),
            Self::Not => write!(f, "NOT"),
            Self::If => write!(f, "IF"),
            Self::Then => write!(f, "THEN"),
            Self::Else => write!(f, "ELSE"),
            Self::Fi => write!(f, "FI"),
            Self::Loop => write!(f, "LOOP"),
            Self::Pool => write!(f, "POOL"),
            Self::While => write!(f, "WHILE"),
            Self::Case => write!(f, "CASE"),
            Self::Esac => write!(f, "ESAC"),
            Self::Let => write!(f, "LET"),
            Self::New => write!(f, "NEW"),
            Self::In => write!(f, "IN"),
            Self::Of => write!(f, "OF"),
            Self::Semi => write!(f, "';'"),
            Self::Comma => write!(f, "','"),
            Self::Dot => write!(f, "'.'"),
            Self::OpenParen => write!(f, "'('"),
            Self::CloseParen => write!(f, "')'"),
            Self::OpenBrace => write!(f, "'{{'"),
            Self::CloseBrace => write!(f, "'}}'"),
            Self::At => write!(f, "'@'"),
            Self::Tilde => write!(f, "'~'"),
            Self::Colon => write!(f, "':'"),
            Self::Eq => write!(f, "'='"),
            Self::Lt => write!(f, "'<'"),
            Self::Minus => write!(f, "'-'"),
            Self::Plus => write!(f, "'+'"),
            Self::Star => write!(f, "'*'"),
            Self::Slash => write!(f, "'/'"),
            Self::Assign => write!(f, "ASSIGN"),
            Self::DArrow => write!(f, "DARROW"),
            Self::LE => write!(f, "LE"),
        }
    }
}

pub struct CharBuffer {
    lines: Lines<BufReader<File>>,
    cur_line: String,
    line_num: usize,
}

impl CharBuffer {
    pub fn new(filename: String) -> Self {
        let buffer = BufReader::new(File::open(filename).expect("failed to open file"));
        let mut lines = buffer.lines();
        let cur_line = lines.next().expect("empty file").expect("read error");
        Self {
            lines,
            cur_line,
            line_num: 1,
        }
    }

    /// Peek the next character, without crossing to new line
    pub fn peek(&self) -> Option<char> {
        self.cur_line.chars().next()
    }
}

impl Iterator for CharBuffer {
    type Item = (usize, char);
    fn next(&mut self) -> Option<(usize, char)> {
        while self.cur_line == "" {
            match self.lines.next() {
                Some(line) => {
                    self.line_num += 1;
                    self.cur_line = line.expect("file error");
                }
                None => return None,
            }
        }

        let mut chars = self.cur_line.chars();
        let next_char = chars.next();
        self.cur_line = chars.collect::<String>();

        match next_char {
            Some(c) => Some((self.line_num, c)),
            None => None,
        }
    }
}

fn parse_digits(c: char, buf: &mut CharBuffer) -> usize {
    let mut value = c.to_digit(10).unwrap();
    while buf.peek().unwrap_or_default().is_digit(10) {
        value *= 10;
        value += buf.next().unwrap().1.to_digit(10).unwrap();
    }

    value as usize
}

fn parse_str(c: char, buf: &mut CharBuffer) -> String {
    let mut s = String::from(c);
    while buf.peek().unwrap_or_default().is_alphanumeric() {
        s.push(buf.next().unwrap().1);
    }

    s
}

fn match_string_token(s: String) -> TokenKind {
    match s.to_lowercase().as_str() {
        // Keywords
        "class" => TokenKind::Class,
        "inherits" => TokenKind::Inherits,
        "isvoid" => TokenKind::IsVoid,
        "true" if s.chars().next().unwrap().is_lowercase()  => TokenKind::True,
        "false"  if s.chars().next().unwrap().is_lowercase() => TokenKind::False,
        "not"  => TokenKind::Not,
        "if"  =>  TokenKind::If, 
        "then"  => TokenKind::Then,
        "else"  => TokenKind::Else,
        "fi"  => TokenKind::Fi, 
        "loop"  => TokenKind::Loop,
        "pool"  => TokenKind::Pool,
        "while"  => TokenKind::While,
        "case"  =>  TokenKind::Case, 
        "esac"  => TokenKind::Esac, 
        "let"  => TokenKind::Let, 
        "new"  =>  TokenKind::New,
        "in"  => TokenKind::In, 
        "of"  => TokenKind::Of,
        // Types
        _ if s.chars().next().unwrap().is_uppercase() => {
            match s.as_str() {
                "SELF_TYPE" => TokenKind::SelfType,
                _ => TokenKind::TypeIdent(s),
            }
        }
        _ => {
            match s.as_str() {
                "self" => TokenKind::SelfIdent,
                _ => TokenKind::ObjIdent(s),
            }
        }
    }
}

pub fn Lex(mut buf: CharBuffer) -> Vec<Token> {
    let mut tokens = vec![];

    while let Some((line,char)) = buf.next() {
        let token = match char {
            // Ignore whitespace
            c if c.is_whitespace() => {
                while buf.peek().unwrap_or_default().is_whitespace() {
                    buf.next();
                }
                None
            }
            // Ignore linecomments
            '-' if buf.peek().unwrap_or_default() == '-' => {
                // peek returns None at the end of the line, so this 
                // eats the rest of the line
                while buf.peek().is_some() {
                    buf.next();
                }
                None
            }
            // Ignore multiline comments
            '(' if buf.peek().unwrap_or_default() == '*' => {
                buf.next(); // Eat '*'
                let mut comment_depth = 1;
                
                while comment_depth != 0 {
                    let c = buf.next().unwrap().1;
                    if c == '(' && buf.peek().unwrap_or_default() == '*' {
                        buf.next();
                        comment_depth += 1;
                    } else if c == '*' && buf.peek().unwrap_or_default() == ')' {
                        buf.next();
                        comment_depth -= 1;
                    }
                }

                None
            }
            // Integer literal (negatives parsed as "-" "INT_lITERAL" so these are always unsigned)
            c if c.is_digit(10) => {
                let value = parse_digits(c, &mut buf);
                Some(Token{kind: TokenKind::Integer(value as usize), line})
            },
            // Keywords and identifiers
            c => {
                let s = parse_str(c, &mut buf);
                let kind = match_string_token(s);
                Some(Token{kind,line})
            }
        };

        if token.is_some() {
            tokens.push(token.unwrap())
        }
    }
    
    tokens
}
