# Problem 12A: Super Agent
# https://codeforces.com/contest/12/problem/A
# Executed with: ruby 3.3.8 (2025-04-09 revision b200bad6cd) [aarch64-linux-gnu]
# Linux version: Linux kernel 6.17.0-5-generic
# Submitted on: October 26th, 2025
# Codeforces language used: Ruby 3.2.2

str = gets.chomp + gets.chomp + gets.chomp

if str[0] == str[8] && str[1] == str[7] && str[2] == str[6] && str[3] == str[5]
  puts "YES"
else
  puts "NO"
end
