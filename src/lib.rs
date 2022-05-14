use std::{
    fmt,
    str::Chars
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

pub struct CharBuffer<'a> {
    chars: Chars<'a>,
    line_number: usize,
}

impl<'a> CharBuffer<'a> {
    pub fn new(input: &'a str) -> Self {
        let chars = input.chars();

        Self {
            chars, 
            line_number: 1
        }
    }

    /// Peek the next character
    pub fn peek(&self) -> Option<char> {
        self.chars.clone().next()
    }
}

impl<'a> Iterator for CharBuffer<'a> {
    type Item = char;
    fn next(&mut self) -> Option<char> {
        self.chars.next()
    }
}

fn parse_digits(c: char, buf: &mut CharBuffer) -> usize {
    let mut value = c.to_digit(10).unwrap();
    while buf.peek().unwrap_or_default().is_digit(10) {
        value *= 10;
        value += buf.next().unwrap().to_digit(10).unwrap();
    }

    value as usize
}

fn is_ident(c: char) -> bool {
    match c {
        c if c.is_alphanumeric() => true,
        '_' => true,
        _ => false
    }
}

fn parse_str(c: char, buf: &mut CharBuffer) -> String {
    let mut s = String::from(c);
    while is_ident(buf.peek().unwrap_or_default()) {
        s.push(buf.next().unwrap());
    }

    s
}

fn parse_str_literal(buf: &mut CharBuffer) -> String {
    let mut s = String::new();
    let mut escaped = false;

    loop {
        match buf.next() {
            // Some escaped char
            Some(c) if escaped => {
                match c {
                    // '\0' is null character, which is forbidden per COOL manual 
                    '0' => panic!("Null char not allowed in string literals."),
                    // '\b', '\t', '\n', '\f', '\\', '\"' should all keep the escaping '\'
                    'b' | 't' | 'n' | 'f' | '\\' | '"' => {
                        s.push('\\');
                        s.push(c);
                    }
                    // Special case for '\n' since we need to increment line number
                    '\n' => {
                        buf.line_number += 1;
                        s.push('\\');
                        s.push('n');
                    }
                    // All other chars we drop the escape char '\'
                    _ => {
                        s.push(c);
                    }
                }
                escaped = false;  // No longer escaped
            }
           
            // Unescaped char
            Some(c) => {
                match c {
                    '\\' => {
                        escaped = true
                    },
                    '"' => {
                        // This terminates the string.
                        break 
                    },
                    '\n' => {
                        panic!("Non-escaped newline character in string literal")
                    }
                    _ => {
                        s.push(c);
                    }
                }
            }
            None => {
                panic!("EOF encountered before end of string literal")
            }
        }
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

pub fn lex(mut buf: CharBuffer) -> Vec<Token> {
    let mut tokens = vec![];

    while let Some(char) = buf.next() {
        let tokenkind = match char {
            // Increment line number if we hit a newline
            '\n' => {
                buf.line_number += 1;
                None
            }
            // Ignore whitespace
            c if c.is_whitespace() => {
                None
            }
            // Ignore linecomments
            '-' if buf.peek().unwrap_or_default() == '-' => {
                // Eat until newline
                while let Some(c) = buf.next() {
                    if c == '\n' {
                        buf.line_number += 1;    
                        break;
                    }
                }

                None
            }
            // Ignore multiline comments
            '(' if buf.peek().unwrap_or_default() == '*' => {
                buf.next(); // Eat '*'
                let mut comment_depth = 1;
                
                while comment_depth != 0 {
                    let c = buf.next().unwrap();
                    if c == '(' && buf.peek().unwrap_or_default() == '*' {
                        buf.next();
                        comment_depth += 1;
                    } else if c == '*' && buf.peek().unwrap_or_default() == ')' {
                        buf.next();
                        comment_depth -= 1;
                    } else if c == '\n' {
                        buf.line_number += 1;
                    }
                }
                None
            }
            // Integer literal (negatives parsed as "-" "INT_lITERAL" so these are always unsigned)
            c if c.is_digit(10) => {
                let value = parse_digits(c, &mut buf);
                Some(TokenKind::Integer(value as usize))
            },  
            // String literal
            '"' => {
                let s = parse_str_literal(&mut buf);
                Some(TokenKind::String(s))
            },
            // One and two char tokens
            ';' => Some(TokenKind::Semi),
            ',' => Some(TokenKind::Comma),
            '.' => Some(TokenKind::Dot),
            '(' => Some(TokenKind::OpenParen),
            ')' => Some(TokenKind::CloseParen),
            '{' => Some(TokenKind::OpenBrace),
            '}' => Some(TokenKind::CloseBrace),
            '@' => Some(TokenKind::At),
            '~' => Some(TokenKind::Tilde),
            ':' => Some(TokenKind::Colon),
            '=' => {
                match buf.peek().unwrap_or_default() {
                    
                    '>' => {
                        buf.next();
                        Some(TokenKind::DArrow)
                    },
                    _ => Some(TokenKind::Eq)
                }
            },
            '<' => {
                match buf.peek().unwrap_or_default() {
                    '-' => {
                        buf.next();
                        Some(TokenKind::Assign)
                    }
                    '=' => {
                        buf.next();
                        Some(TokenKind::LE)
                    }
                    _ => Some(TokenKind::Lt),
                }
            },    
            '-' => Some(TokenKind::Minus),
            '+' => Some(TokenKind::Plus),
            '*' => Some(TokenKind::Star),
            '/' => Some(TokenKind::Slash),

            // Keywords and identifiers
            c => {
                let s = parse_str(c, &mut buf);
                let kind = match_string_token(s);
                Some(kind)
            }
        };

        if tokenkind.is_some() {
            tokens.push(Token::new(tokenkind.unwrap(), buf.line_number ))
        }
    }
    
    tokens
}
