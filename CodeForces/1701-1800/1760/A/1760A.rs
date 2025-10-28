// Problem 1760A: Medium Number
// https://codeforces.com/contest/1760/problem/A
// Compiled with: rustc 1.85.1 (4eb161250 2025-03-15) (built from a source tarball)
// Linux version: Linux kernel 6.17.0-6-generic
// Submitted on: October 27th, 2025
// Codeforces language used: Rust 1.89.0 (2024)

fn main() {
    let runs: i32 = std::io::stdin().lines().next().unwrap().unwrap().trim().parse().unwrap();

    for _ in 0..runs {
        let mut nums: Vec<i32> = std::io::stdin().lines().next().unwrap().unwrap().split_whitespace().map(|x| x.parse::<i32>().unwrap()).collect();
        nums.sort_by_key(|x| *x);
        println!("{}", nums[1]);
    }
}
