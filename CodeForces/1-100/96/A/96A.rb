# Problem 96A: Football
# https://codeforces.com/contest/96/problem/A
# Executed with: ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x86_64-linux-gnu]
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: October 23rd, 2025
# Codeforces language used: Ruby 3.2.2

football = gets.chomp

if (football.include? "0000000") || (football.include? "1111111")
    puts "YES"
else
    puts "NO"
end
