# Problem 268A: Games
# https://codeforces.com/contest/268/problem/A
# Executed with: ruby 3.3.8 (2025-04-09 revision b200bad6cd) [aarch64-linux-gnu]
# Linux version: Linux kernel 6.17.0-6-generic
# Submitted on: October 27th, 2025
# Codeforces language used: Ruby 3.2.2

size = gets.to_i

home = Array.new(size)
guest = Array.new(size)

for idx in 0..size-1
  home[idx], guest[idx] = gets.split.map(&:to_i)
end

ans = 0

for home_idx in 0..size-1
  for guest_idx in 0..size-1
    if guest_idx != home_idx
      if home[home_idx] == guest[guest_idx]
        ans += 1
      end
    end
  end
end

puts ans 
