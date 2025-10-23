w = gets.to_i

for counter in 1..w
    input = gets.to_i
    if input >= 1900
        puts "Division 1"
    elsif input >= 1600
        puts "Division 2"
    elsif input >= 1400
        puts "Division 3"
    else
        puts "Division 4"
    end
end
