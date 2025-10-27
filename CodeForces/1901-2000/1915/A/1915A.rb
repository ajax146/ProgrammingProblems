# Problem 1915A: Odd One Out
# https://codeforces.com/contest/1915/problem/A
# Executed with: ruby 3.3.8 (2025-04-09 revision b200bad6cd) [aarch64-linux-gnu]
# Linux version: Linux kernel 6.17.0-6-generic
# Submitted on: October 27th, 2025
# Codeforces language used: Ruby 3.2.2

runs = gets.to_i

for _ in 1..runs
  all_nums = gets.split.map(&:to_i).sort
  if all_nums[0] == all_nums[1]
    puts all_nums[2]
  else
    puts all_nums[0]
  end
end
