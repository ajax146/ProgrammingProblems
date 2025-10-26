# Problem 4C: Registration System
# https://codeforces.com/contest/4/problem/C
# Executed with: ruby 3.3.8 (2025-04-09 revision b200bad6cd) [aarch64-linux-gnu]
# Linux version: Linux kernel 6.17.0-5-generic
# Submitted on: October 25th, 2025
# Codeforces language used: Ruby 3.2.2

history = {}
usernames = gets.to_i

for _ in 1..usernames

    username = gets.chomp

    if history.key?(username)
        puts username + history[username].to_s
        history[username] += 1
    
    else
        puts "OK"
        history[username] = 1
    end
end
