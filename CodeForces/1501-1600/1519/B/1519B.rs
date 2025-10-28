// Problem 1519B: The Cake Is a Lie
// https://codeforces.com/contest/1519/problem/B
// Compiled with: rustc 1.85.1 (4eb161250 2025-03-15) (built from a source tarball)
// Linux version: Linux kernel 6.17.0-6-generic
// Submitted on: October 27th, 2025
// Codeforces language used: Rust 1.89.0 (2024)

fn main() {
    let runs: i32 = std::io::stdin().lines().next().unwrap().unwrap().trim().parse().unwrap();

    for _ in 0..runs {
        let input_integers: Vec<i32> = std::io::stdin().lines().next().unwrap().unwrap().split_whitespace().map(|x| x.parse::<i32>().unwrap()).collect();
        let target_m = input_integers[0];
        let target_n = input_integers[1];

        let spent = (target_m*target_n)-1;
        if spent == input_integers[2] {
            println!("YES");
        } else {
            println!("NO");
        }
    }
}
