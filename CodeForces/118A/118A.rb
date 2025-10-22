w = gets
w = w.chomp.downcase.chars

ans = ""

w.each do |character|
  if !(character == "a" || character == "e" || character == "i" || character == "o" || character == "u" || character == "y")
    ans += "."
    ans += character
  end
end

puts ans
