# Problem 61A: Ultra-Fast Mathematician
# https://codeforces.com/contest/61/problem/A
# Executed with: ruby 3.3.8 (2025-04-09 revision b200bad6cd) [aarch64-linux-gnu]
# Linux version: Linux kernel 6.17.0-5-generic
# Submitted on: October 26th, 2025
# Codeforces language used: Ruby 3.2.2

num1 = gets.chomp
num2 = gets.chomp

for index in 0..num1.length-1
  if num1[index] == num2[index]
    print 0
  else
    print 1
  end
end
print "\n"
