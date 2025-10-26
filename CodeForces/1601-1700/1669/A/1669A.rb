# Problem 1669A: Division?
# https://codeforces.com/contest/1669/problem/A
# Executed with: ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x86_64-linux-gnu]
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: October 23rd, 2025
# Codeforces language used: Ruby 3.2.2
# 
w = gets.to_i

for counter in 1..w
    input = gets.to_i
    if input >= 1900
        puts "Division 1"
    elsif input >= 1600
        puts "Division 2"
    elsif input >= 1400
        puts "Division 3"
    else
        puts "Division 4"
    end
end
