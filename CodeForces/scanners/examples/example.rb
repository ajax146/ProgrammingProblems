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

# Init scanner
scanner = Scanner.new

# One int
i = scanner.nextInt
puts i

# One double
a = scanner.nextDouble
puts a

# One 64 bit int (long)
l = scanner.nextLong
puts l

# One word
w = scanner.nextWord
puts w

# One string/line
l2 = scanner.nextString
puts l2

# Int array
ia = scanner.nextIntArray(true)
puts ia.join(" ")

# 64 bit int array
la = scanner.nextLongArray
puts la.join(" ")