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
    @buffer
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
