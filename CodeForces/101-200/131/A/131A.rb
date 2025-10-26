# Problem 131A: cAPS lOCK
# https://codeforces.com/contest/131/problem/A
# Executed with: ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x86_64-linux-gnu]
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: October 22nd, 2025
# Codeforces language used: Ruby 3.2.2

w = gets.chomp

w_all_uppercase = w.upcase
w_all_but_first_uppercase = w[1...101].upcase

if w == w_all_uppercase
  puts w.downcase
elsif w[1...101] == w_all_but_first_uppercase
  puts w[0].upcase + w_all_but_first_uppercase.downcase
else
  puts w
end
