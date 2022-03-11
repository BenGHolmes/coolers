use std::fmt;

/// Parsed token.
/// Stores the kind of token parsed as well as the line number of the program
pub struct Token {
    pub kind: TokenKind,
    pub line: usize,
}

impl Token {
    fn new(kind: TokenKind, line: usize) -> Token {
        Token{kind, line}
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
    Integer(isize),
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
            Self::LE => write!(f, "LE")
        }
    }
}

pub fn Lex(s: String) -> Vec<Token> {
    vec![]
}