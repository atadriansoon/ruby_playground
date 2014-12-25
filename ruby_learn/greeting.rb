puts "Hello there!"
greeting = gets.chomp
greeting.downcase!
# Add your case statement below!
case greeting

when "english" then puts "Hello!"
when "french" then puts "Bonjour!"
when "german" then puts "Guten Tag!"
when "finnish" then puts "Haloo!"
else puts "I don't know that language!"
end

