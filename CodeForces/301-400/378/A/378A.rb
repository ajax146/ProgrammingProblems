# Problem 378A: Playing with Dice
# https://codeforces.com/contest/378/problem/A
# Executed with: ruby 3.3.8 (2025-04-09 revision b200bad6cd) [aarch64-linux-gnu]
# Linux version: Linux kernel 6.17.0-6-generic
# Submitted on: November 2nd, 2025
# Codeforces language used: Ruby 3.2.2

class Scanner
  def initialize
    @buffer = []
  end

  private

  def refill
    while @buffer.empty?
      line = gets
      raise "EOF reached" if line.nil?
      @buffer = line.strip.split(/\s+/)
    end
  end

  public

  def nextInt
    refill
    @buffer.shift.to_i
  end

  def nextDouble
    refill
    @buffer.shift.to_f
  end

  def nextLong
    nextInt
  end

  def nextWord
    refill
    @buffer.shift
  end

  def nextString
    refill
    val = @buffer.join(" ")
    @buffer.clear
    return val
  end

  def nextIntArray(sorted = false)
    refill
    arr = @buffer.map(&:to_i)
    @buffer.clear
    arr.sort! if sorted
    arr
  end

  def nextLongArray(sorted = false)
    nextIntArray(sorted)
  end
end

scanner = Scanner.new

p1 = scanner.nextInt
p2 = scanner.nextInt

p1_wins = 0
ties = 0;
p2_wins = 0;

for val in 1..6
  p1_diff = (val-p1).abs
  p2_diff = (val-p2).abs
  if p1_diff < p2_diff
    p1_wins += 1
  elsif p2_diff < p1_diff
    p2_wins += 1
  else 
    ties += 1
  end
end
print p1_wins, " ", ties, " ", p2_wins, "\n"
