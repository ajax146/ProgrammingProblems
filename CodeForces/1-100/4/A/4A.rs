// Problem 4A: Watermelon
// https://codeforces.com/contest/4/problem/A
// Compiled with: rustc 1.63.0
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 22nd, 2025
// Codeforces language used: Rust 1.89.0 (2024)

use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    let w: i32 = input.trim().parse().unwrap();

    if w > 2 && w % 2 == 0 {
        println!("YES");
    } else {
        println!("NO");
    }
}
