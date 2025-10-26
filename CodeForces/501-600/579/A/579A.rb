# Problem 579A: Raising Bacteria
# https://codeforces.com/contest/579/problem/A
# Executed with: ruby 3.3.8 (2025-04-09 revision b200bad6cd) [aarch64-linux-gnu]
# Linux version: Linux kernel 6.17.0-5-generic
# Submitted on: October 26th, 2025
# Codeforces language used: Ruby 3.2.2

goal = gets.to_i
ans = 0

while true
  if goal == 0
    break
  end
  if goal.even?
    goal /= 2
  else
    goal -= 1
    ans += 1
  end
end

puts ans
