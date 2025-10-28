// Problem 158A: Next Round
// https://codeforces.com/contest/158/problem/A
// Compiled with: rustc 1.85.1 (4eb161250 2025-03-15) (built from a source tarball)
// Linux version: Linux kernel 6.17.0-6-generic
// Submitted on: October 27th, 2025
// Codeforces language used: Rust 1.89.0 (2024)

fn main() {
    let data: Vec<i32> = std::io::stdin().lines().next().unwrap().unwrap().split_whitespace().map(|x| x.parse::<i32>().unwrap()).collect();
    let all_scores: Vec<i32> = std::io::stdin().lines().next().unwrap().unwrap().split_whitespace().map(|x| x.parse::<i32>().unwrap()).collect();
    let target_score: i32 = std::cmp::max(all_scores[(data[1]-1) as usize], 1);

    let mut final_ans: i32 = 0;

    for score in all_scores {
        if score >= target_score {
            final_ans += 1; 
        }
    }
    println!("{}", final_ans);
}
