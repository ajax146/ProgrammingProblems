// Problem 141A: Amusing Joke
// https://codeforces.com/contest/141/problem/A
// Compiled with: rustc 1.85.1 (4eb161250 2025-03-15) (built from a source tarball)
// Linux version: Linux kernel 6.17.0-5-generic
// Submitted on: October 26th, 2025
// Codeforces language used: Rust 1.89.0 (2024)

fn main() {
    let name1 = std::io::stdin().lines().next().unwrap().unwrap();
    let name2 = std::io::stdin().lines().next().unwrap().unwrap();
    let all_letters = std::io::stdin().lines().next().unwrap().unwrap();
    let all_names = name1 + &name2;

    let mut frequency: Vec<i32> = vec![0; 26];

    for c in all_letters.chars() {
        let index = ((c as i32)-65) as usize;
        frequency[index] += 1;
    }

    for c in all_names.chars() {
        let index = ((c as i32)-65) as usize;
        frequency[index] -= 1;
    }

    for val in &frequency {
        if *val != 0 {
            println!("NO");
            return;
        }
    }
    println!("YES");
}
