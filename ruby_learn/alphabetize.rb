def alphabetize(arr,rev=false)
   arr.sort!
    if rev==true
        arr.reverse!
   else arr.sort!
   end
end 

numbers =[2,3,4]
alphabetize(numbers)
puts numbers