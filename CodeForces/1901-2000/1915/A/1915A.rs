// Problem 1915A: Odd One Out
// https://codeforces.com/contest/1915/problem/A
// Compiled with: rustc 1.63.0
// Linux version: Linux kernel 6.1.0-10-amd64
// Submitted on: October 23rd, 2025
// Codeforces language used: Rust 1.89.0 (2024)

use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    let w: i32 = input.trim().parse().unwrap();
    for _ in 0..w {
        let mut input = String::new();
        io::stdin().read_line(&mut input).unwrap();
        let nums: Vec<i32> = input
            .split_whitespace()
            .map(|x| x.parse::<i32>().unwrap())
            .collect();

        let a = nums[0];
        let b = nums[1];
        let c = nums[2];

        if a == b {
            println!("{}", c);
        } else {
            if a == c {
                println!("{}", b);
            } else {
                println!("{}", a);
            }
        }
    }
}
