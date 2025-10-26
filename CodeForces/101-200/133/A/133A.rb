# Problem 133A: H9Q+
# https://codeforces.com/contest/133/problem/A
# Executed with: ruby 3.3.8 (2025-04-09 revision b200bad6cd) [aarch64-linux-gnu]
# Linux version: Linux kernel 6.17.0-5-generic
# Submitted on: October 26th, 2025
# Codeforces language used: Ruby 3.2.2

input_str = gets.chomp
valid_chars = "HQ9"

for index in 0..input_str.length-1
  if valid_chars.include? input_str[index]
    puts "YES"
    return
  end
end

puts "NO"
