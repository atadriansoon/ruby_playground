movies = {
    a: 1,
    b: 2,
    c: 3,
    d: 4,
}

puts "Enter choice"
puts "add"
puts "update"
puts "display"
puts "delete"

choice = gets.chomp
choice.downcase!

case choice

when "add"
puts "Enter title"
title = gets.chomp
title.downcase!
if movies[title.to_sym].nil?
puts "Enter rating"
rating = gets.chomp
movies[title.to_sym] = rating.to_i
else puts "Title already Exist"
end

when "update"
puts "Enter title to update"
title =gets.chomp
title.downcase!
if movies[title.to_sym].nil?
    puts "#{title} do not Exist"
else 
    puts "Enter rating"
    rating = gets.chomp
    movies[title.to_sym]  = rating.to_i
end

when "display"
movies.each {
|x,y|
puts "#{x}: #{y}"
}


when "delete"
puts "Enter title!"
title = gets.chomp
title.downcase!
if movies[title.to_sym].nil?
    puts "Error not  in hash"
else movies.delete(title.to_sym)
    puts "Deleted #{title}"
end
else puts "Invalid choice!"
end