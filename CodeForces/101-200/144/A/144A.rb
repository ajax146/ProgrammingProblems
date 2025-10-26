# Problem 144A: Arrival of the General
# https://codeforces.com/contest/144/problem/A
# Executed with: ruby 3.3.8 (2025-04-09 revision b200bad6cd) [aarch64-linux-gnu]
# Linux version: Linux kernel 6.17.0-5-generic
# Submitted on: October 26th, 2025
# Codeforces language used: Ruby 3.2.2

_ = gets.chomp
all_positions = gets.split.map(&:to_i)

# Largest to the left
# Smallest to the right

largest_index = -1
largest_value = -1

smallest_index = 9999999
smallest_value = 9999999

for index in 0..all_positions.length-1
  if all_positions[index] > largest_value
    largest_index = index
    largest_value = all_positions[index]
  end

  if all_positions[index] <= smallest_value
    smallest_index = index
    smallest_value = all_positions[index]
  end

end

# If the largest value and smallest value need to pass each other, you move both with one move.
if largest_index > smallest_index
  largest_index -= 1
end

puts largest_index + all_positions.length-smallest_index-1
