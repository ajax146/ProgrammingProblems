# Problem 1922A: Tricky Template
# https://codeforces.com/contest/1922/problem/A
# Executed with: ruby 3.3.8 (2025-04-09 revision b200bad6cd) [aarch64-linux-gnu]
# Linux version: Linux kernel 6.17.0-6-generic
# Submitted on: October 27th, 2025
# Codeforces language used: Ruby 3.2.2

runs = gets.to_i

for _ in 1..runs
  
  str_len = gets.to_i

  a = gets.chomp
  b = gets.chomp
  c = gets.chomp

  hit = false

  # If a, b and c are all ever different, then print yes
  # If a and b are the same, and c is differnet, then print yes
  # If neither of those cases are ever true, print no
  for idx in 0..str_len-1
    if a[idx] != b[idx] && a[idx] != c[idx] && b[idx] != c[idx]
      puts "YES"
      hit = true
      break
    elsif a[idx] == b[idx] && a[idx] != c[idx] && b[idx] != c[idx]
      puts "YES"
      hit = true
      break
    end
  end
  if !hit
    puts "NO"
  end

end
