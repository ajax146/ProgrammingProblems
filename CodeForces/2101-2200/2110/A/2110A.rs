// Problem 2110A: Fashionable Array
// https://codeforces.com/contest/2110/problem/A
// Compiled with: rustc 1.85.1 (4eb161250 2025-03-15) (built from a source tarball)
// Linux version: Linux kernel 6.17.0-6-generic
// Submitted on: October 27th, 2025
// Codeforces language used: Rust 1.89.0 (2024)

fn main() {
    let runs: i32 = std::io::stdin().lines().next().unwrap().unwrap().trim().parse().unwrap();

    for _ in 0..runs {
        let len_of_nums: i32 = std::io::stdin().lines().next().unwrap().unwrap().trim().parse().unwrap();
        let mut nums: Vec<i32> = std::io::stdin().lines().next().unwrap().unwrap().split_whitespace().map(|x| x.parse::<i32>().unwrap()).collect();
        nums.sort_by_key(|x| *x);

        let mut left_indx = 0;
        while left_indx != len_of_nums {
            if (nums[left_indx as usize] % 2) == (nums[(len_of_nums-1) as usize] % 2) {
                break;
            }
            left_indx += 1;
        }

        let mut right_indx = len_of_nums-1;
        while right_indx != -1 {
            if (nums[0] % 2) == (nums[right_indx as usize] % 2) {
                break;
            }
            right_indx -= 1;
        }

        if right_indx == -1 && left_indx == len_of_nums {
            // Not sure what to do for this case
            println!("{}", len_of_nums);
        } else {
            println!("{}", std::cmp::min(left_indx, len_of_nums-right_indx-1))
        }
    }
}
