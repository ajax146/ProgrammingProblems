clone, original = gets.split.map(&:to_i)

originals_to_make = original-1
clones_to_make = clone-originals_to_make

# If we have to make negative originals
if originals_to_make < 0
    puts "NO"
    exit
end

if originals_to_make == 0 && clone != 0 
    puts "NO"
    exit
end

if clones_to_make < 0
    puts "NO"
    exit
end

if clones_to_make % 2 == 1
    puts "NO"
    exit
end

puts "YES"
