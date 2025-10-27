# Problem 2036A: Quintomania
# https://codeforces.com/contest/2036/problem/A
# Executed with: ruby 3.3.8 (2025-04-09 revision b200bad6cd) [aarch64-linux-gnu]
# Linux version: Linux kernel 6.17.0-6-generic
# Submitted on: October 27th, 2025
# Codeforces language used: Ruby 3.2.2

runs = gets.to_i

for _ in 1..runs
  
  note_count = gets.to_i
  all_notes = gets.split.map(&:to_i)

  hit = false
  for idx in 0..note_count-2
    compute = (all_notes[idx+1]-all_notes[idx]).abs
    if compute != 5 && compute != 7
      puts "NO"
      hit = true
      break
    end
  end
  if !hit
    puts "YES"
  end
end
