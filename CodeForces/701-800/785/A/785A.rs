// Problem 785A: Anton and Polyhedrons
// https://codeforces.com/contest/785/problem/A
// Compiled with: rustc 1.85.1 (4eb161250 2025-03-15) (built from a source tarball)
// Linux version: Linux kernel 6.17.0-5-generic
// Submitted on: October 26th, 2025
// Codeforces language used: Rust 1.89.0 (2024)

use std::collections::HashMap;

fn main() {
    let lookup_table: HashMap<&str, i32> = [
        ("Tetrahedron", 4),
        ("Cube", 6),
        ("Octahedron", 8),
        ("Dodecahedron", 12),
        ("Icosahedron", 20),
    ].iter().cloned().collect();

    let runs: i32 = std::io::stdin().lines().next().unwrap().unwrap().trim().parse().unwrap();
    let mut ans: i32 = 0;

    for _ in 0..runs {
        let input_string = std::io::stdin().lines().next().unwrap().unwrap();
        ans += lookup_table[input_string.as_str()];
    }

    println!("{}", ans); 
}
