# Problem 50A: Domino piling
# https://codeforces.com/contest/50/problem/A
# Executed with: ruby 3.3.8 (2025-04-09 revision b200bad6cd) [aarch64-linux-gnu]
# Linux version: Linux kernel 6.17.0-5-generic
# Submitted on: October 25th, 2025
# Codeforces language used: Ruby 3.2.2

m, n = gets.split.map(&:to_i)

ans = (m/2) * n

if m.odd?
  ans += n/2
end

puts ans
