// Problem 1791A: Codeforces Checking
// https://codeforces.com/contest/1791/problem/A
// Compiled with: rustc 1.63.0
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 23rd, 2025
// Codeforces language used: Rust 1.89.0 (2024)

use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    let w: i32 = input.trim().parse().unwrap();
    
    let ans_str = "cdefors";
    
    for _ in 0..w {
        let mut line = String::new();
        io::stdin().read_line(&mut line).unwrap();
        let ch = line.trim().chars().next().unwrap();

        if ans_str.contains(ch) {
            println!("YES");
        } else {
            println!("NO");
        }
    }
}
