w = gets.chomp

w_all_uppercase = w.upcase
w_all_but_first_uppercase = w[1...101].upcase

if w == w_all_uppercase
  puts w.downcase
elsif w[1...101] == w_all_but_first_uppercase
  puts w[0].upcase + w_all_but_first_uppercase.downcase
else
  puts w
end
