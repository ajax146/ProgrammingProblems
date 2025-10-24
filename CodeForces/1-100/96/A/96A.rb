football = gets.chomp

if (football.include? "0000000") || (football.include? "1111111")
    puts "YES"
else
    puts "NO"
end
