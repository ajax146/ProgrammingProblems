// Problem 263A: Beautiful Matrix
// https://codeforces.com/contest/263/problem/A
// Compiled with: rustc 1.85.1 (4eb161250 2025-03-15) (built from a source tarball)
// Linux version: Linux kernel 6.17.0-6-generic
// Submitted on: November 4th, 2025
// Codeforces language used: Rust 1.89.0 (2024)

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
    let stdin = io::stdin();
    let mut scanner = Scanner::new(stdin.lock());

    let mut grid: Vec<Vec<i32>> = vec![];

    for _ in 0..5 {
        let ia = scanner.nextIntArray(false);
        grid.push(ia);
    }

    for x in 0..5 {
        for y in 0..5 {
            let num = grid[x][y];
            if num == 1 {
                let x_diff = (x as i32-2).abs();
                let y_diff = (y as i32-2).abs();
                println!("{}", x_diff+y_diff);
            }
        }
    }
}
