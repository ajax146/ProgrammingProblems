// Problem 1551A: Polycarp and Coins
// https://codeforces.com/contest/1551/problem/A
// Compiled with: rustc 1.85.1 (4eb161250 2025-03-15) (built from a source tarball)
// Linux version: Linux kernel 6.17.0-6-generic
// Submitted on: October 27th, 2025
// Codeforces language used: Rust 1.89.0 (2024)

fn main() {
    let runs: i32 = std::io::stdin().lines().next().unwrap().unwrap().trim().parse().unwrap();

    for _ in 0..runs {
        let cost: i32 = std::io::stdin().lines().next().unwrap().unwrap().trim().parse().unwrap();

        let two_thirds: i32 = cost * 2 / 3;

        let mut one_coin = two_thirds/2;
        let mut two_coin = two_thirds/2;
        let perfect_even = one_coin+(two_coin*2);
        if perfect_even+2 == cost {
            two_coin += 1;
        } 
        if perfect_even+1 == cost {
            one_coin += 1;
        }

        println!("{} {}", one_coin, two_coin);
    }
}
