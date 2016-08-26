num = 1
while num <= 100
result = ""
    if num % 3 == 0
        result << "Fizz"  #result = result + "Fizz"
    end
    if num % 5 == 0 
        result = result + "Buzz"  #result << "Buzz"
    end
    if result == ""
        result = num
    end
    puts result
  num += 1
end
  
  
  
  
  
  
  
  
 