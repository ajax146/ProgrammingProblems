# Problem 118A: String Task
# https://codeforces.com/contest/118/problem/A
# Executed with: ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x86_64-linux-gnu]
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: October 22nd, 2025
# Codeforces language used: Ruby 3.2.2

w = gets
w = w.chomp.downcase.chars

ans = ""

w.each do |character|
  if !(character == "a" || character == "e" || character == "i" || character == "o" || character == "u" || character == "y")
    ans += "."
    ans += character
  end
end

puts ans
