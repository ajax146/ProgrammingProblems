use std::io::{self, BufRead};
use std::str::FromStr;

struct Scanner<R> {
    reader: R,
    buffer: Vec<String>,
}

impl<R: BufRead> Scanner<R> {
    fn new(reader: R) -> Self {
        Scanner {
            reader,
            buffer: Vec::new(),
        }
    }

    fn refill(&mut self) {
        while self.buffer.is_empty() {
            let mut line = String::new();
            let n = self.reader.read_line(&mut line).expect("Failed to read line");
            if n == 0 {
                panic!("EOF reached");
            }
            self.buffer = line
                .split_whitespace()
                .map(|s| s.to_string())
                .collect();
        }
    }

    fn next<T: FromStr>(&mut self) -> T
    where
        T::Err: std::fmt::Debug,
    {
        self.refill();
        self.buffer
            .remove(0)
            .parse::<T>()
            .expect("Failed to parse token")
    }

    fn nextInt(&mut self) -> i32 {
        self.next()
    }

    fn nextDouble(&mut self) -> f64 {
        self.next()
    }

    fn nextLong(&mut self) -> i64 {
        self.next()
    }

    fn nextWord(&mut self) -> String {
        self.next()
    }

    fn nextString(&mut self) -> String {
        self.refill();
        let line = self.buffer.join(" ");
        self.buffer.clear();
        return line;
    }

    fn nextIntArray(&mut self, sorted: bool) -> Vec<i32> {
        self.refill();
        let mut arr: Vec<i32> = self.buffer.drain(..).map(|s| s.parse().unwrap()).collect();
        if sorted {
            arr.sort();
        }
        arr
    }

    fn nextLongArray(&mut self, sorted: bool) -> Vec<i64> {
        self.refill();
        let mut arr: Vec<i64> = self.buffer.drain(..).map(|s| s.parse().unwrap()).collect();
        if sorted {
            arr.sort();
        }
        arr
    }
}

fn main() {
    // Needed setup
    let stdin = io::stdin();

    // Declare the scanner
    let mut scanner = Scanner::new(stdin.lock());

    // One int
    let i = scanner.nextInt();
    println!("{}", i);

    // One double
    let a = scanner.nextDouble();
    println!("{}", a);

    // One 64 bit int (long)
    let l = scanner.nextLong();
    println!("{}", l);

    // One word
    let w = scanner.nextWord();
    println!("{}", w);

    // One string/line
    let l2 = scanner.nextString();
    println!("{}", l2);

    // Int array
    let ia = scanner.nextIntArray(true);
    for x in ia { print!("{} ", x); }
    println!();

    // 64 bit int array
    let la = scanner.nextLongArray(false);
    for x in la { print!("{} ", x); }
    println!();
}
