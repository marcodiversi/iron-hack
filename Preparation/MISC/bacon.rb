puts "What's your food?"

def food(input)
    if input == "bacon"
        puts "yum"
    elsif input == "spinach"
        puts "urghh"
    else 
        puts "can i have some bacon"
    end
end

input = gets.chomp
food(input)
