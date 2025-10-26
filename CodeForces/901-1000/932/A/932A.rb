# Problem 932A: Palindromic Supersequence
# https://codeforces.com/contest/932/problem/A
# Executed with: ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x86_64-linux-gnu]
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: October 23rd, 2025
# Codeforces language used: Ruby 3.2.2

w = gets.chomp
w_back = w.dup
w_back.reverse!

puts w + w_back
