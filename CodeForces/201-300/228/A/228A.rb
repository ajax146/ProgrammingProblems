# Problem 228A: Is your horseshoe on the other hoof?
# https://codeforces.com/contest/228/problem/A
# Executed with: ruby 3.3.8 (2025-04-09 revision b200bad6cd) [aarch64-linux-gnu]
# Linux version: Linux kernel 6.17.0-5-generic
# Submitted on: October 26th, 2025
# Codeforces language used: Ruby 3.2.2

require 'set'

s1 = gets.split.map(&:to_i).to_set()
puts 4-s1.length
