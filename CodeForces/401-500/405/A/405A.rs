// Problem 405A: Gravity Flip
// https://codeforces.com/contest/405/problem/A
// Compiled with: rustc 1.85.1 (4eb161250 2025-03-15) (built from a source tarball)
// Linux version: Linux kernel 6.17.0-5-generic
// Submitted on: October 26th, 2025
// Codeforces language used: Rust 1.89.0 (2024)

fn main() {
    // n
    let _n: i32 = std::io::stdin().lines().next().unwrap().unwrap().trim().parse().unwrap();

    // a1...an
    let mut nums: Vec<i32> = std::io::stdin().lines().next().unwrap().unwrap().split_whitespace().map(|x| x.parse::<i32>().unwrap()).collect();
    nums.sort_by_key(|x| *x);

    for val in nums {
        print!("{}", val);
        print!(" ");
    }
    print!("\n");
}
