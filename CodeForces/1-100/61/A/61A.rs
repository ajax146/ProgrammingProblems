// Problem 61A: Ultra-Fast Mathematician
// https://codeforces.com/contest/61/problem/A
// Compiled with: rustc 1.63.0
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 24th, 2025
// Codeforces language used: Rust 1.89.0 (2024)

use std::io;

fn main() {
    let mut line = String::new();
    io::stdin().read_line(&mut line).unwrap();
    let line1 = line.trim();

    let mut line = String::new();
    io::stdin().read_line(&mut line).unwrap();
    let line2 = line.trim();

    for (_, (c1, c2)) in line1.chars().zip(line2.chars()).enumerate() {

        if c1 == c2 {
            print!("0");
        } else {
            print!("1");
        }
    }
    print!("\n");
}
