# Problem 58A: Chat room
# https://codeforces.com/contest/58/problem/A
# Executed with: ruby 3.3.8 (2025-04-09 revision b200bad6cd) [aarch64-linux-gnu]
# Linux version: Linux kernel 6.17.0-5-generic
# Submitted on: October 26th, 2025
# Codeforces language used: Ruby 3.2.2

input_str = gets.chomp
hello_str = "hello"

for index in 0..input_str.length-1
  if input_str[index] == hello_str[0]
    hello_str = hello_str[1..-1]
    if hello_str.length == 0
      puts "YES"
      return
    end
  end
end

puts "NO"
