// Problem 479C: Exams
// https://codeforces.com/contest/479/problem/C
// Compiled with: rustc 1.85.1 (4eb161250 2025-03-15) (built from a source tarball)
// Linux version: Linux kernel 6.17.0-6-generic
// Submitted on: October 27th, 2025
// Codeforces language used: Rust 1.89.0 (2024)

fn main() {
    let test_cases: i32 = std::io::stdin().lines().next().unwrap().unwrap().trim().parse().unwrap();
    let mut exams: Vec<Vec<i32>> = vec![Vec::new(); test_cases as usize];

    // Store the two days each exam is avaiable
    for idx in 0..test_cases {
        let data: Vec<i32> = std::io::stdin().lines().next().unwrap().unwrap().split_whitespace().map(|x| x.parse::<i32>().unwrap()).collect();
        exams[idx as usize].push(data[1]);
        exams[idx as usize].push(data[0]);
    }

    // Sort by the larger day, then the smaller day
    exams.sort_by(|a, b| a[1].cmp(&b[1]).then(a[0].cmp(&b[0])));
    let mut current_day = 0;

    // Enumerate over each exam in the order it must be completed in.
    for (_i, arr) in exams.iter().enumerate() {
        if arr[0] >= current_day {
            // Try and be greedy and assume we can take the exam early
            current_day = arr[0];
        } else {
            // We have to take the exam on the late day
            current_day = arr[1];
        }
    }
    println!("{}", current_day);
}
