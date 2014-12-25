puts "Input"
text = gets.chomp
words =text.split

frequencies = Hash.new(0)

words.each do |x|
    frequencies[x] += 1
end 

frequencies = frequencies.sort_by do |x,y|
    y
end 
frequencies.reverse!
frequencies.each do |x,y|
    puts x + " " + y.to_s
end 