# Problem 922A: Cloning Toys
# https://codeforces.com/contest/922/problem/A
# Executed with: ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x86_64-linux-gnu]
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: October 23rd, 2025
# Codeforces language used: Ruby 3.2.2

clone, original = gets.split.map(&:to_i)

originals_to_make = original-1
clones_to_make = clone-originals_to_make

# If we have to make negative originals
if originals_to_make < 0
    puts "NO"
    exit
end

if originals_to_make == 0 && clone != 0 
    puts "NO"
    exit
end

if clones_to_make < 0
    puts "NO"
    exit
end

if clones_to_make % 2 == 1
    puts "NO"
    exit
end

puts "YES"
