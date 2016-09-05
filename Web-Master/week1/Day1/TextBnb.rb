class Home 
  attr_reader(:name, :city, :capacity, :price)
  
  def initialize(name, city, capacity, price)
    @name = name
    @city = city 
    @capacity = capacity
    @price = price
  end
end

homes = [ 
  Home.new("Marco", "Rimini", 2 , 40),
  Home.new("Cristen", "Groton", 5, 30),
  Home.new("Gianfranco", "London", 1, 100),
  Home.new("Jesse", "Minneapolis", 4, 80),
  Home.new("Federico", "Miami", 2, 50),
  Home.new("Brandon", "New York", 2 , 150),
  Home.new("Cesare", "Tenerife", 10, 15),
  Home.new("Simone", "San Marino", 2, 25),
  Home.new("Kent", "Dallas", 1, 70),
  Home.new("Matteo", "Bologna", 2, 40),
  Home.new("Jesus", "Rimini", 2, 60)
  ]
  
# homes = home.map do |hm|
#   "#{hm.name}'s place is in #{hm.city} \n Price: #{hm.price} a night \n\n"
# end

# puts homes

# ##########################

# average = home.reduce(0.0) do |sum, hm|
#     sum + hm.price
#   end
  
# puts "The average price of these houses is #{average/home.length} \n\n"

homes.each do |hm|
	puts "#{hm.name}'s home is in #{hm.city} and costs #{hm.price} a night "
end


puts "\n\n You can sort by the highest price first : price  or by:  capacity"

input = gets.chomp.downcase

while ((input != 'price') || (input !='capacity'))
    
if input == 'price'
	sorted_price_high = homes.sort {|home1, home2| home2.price <=> home1.price}

	sorted_price_high.each do |hm|
		puts "#{hm.name}'s home is in #{hm.city} and costs #{hm.price} a night "
end
break
elsif input == 'capacity'
	sorted_capacity = homes.sort {|home1, home2| home2.capacity <=> home1.capacity}

	sorted_capacity.each do |hm|
		puts "#{hm.name}'s home is in #{hm.city} and have a capacity of #{hm.capacity} "
	end
	break
else 
    puts " \n\nYou have to write price or capacity, try again  "
    input = gets.chomp.downcase
end
end

puts "\n\nYou can also select home only from a specific town\n\n" 
input_2 = gets.chomp.capitalize

user_selected_city = homes.select do |hm|
	hm.city == input_2
end


user_selected_city.each do |hm|
	puts " This house is selected in the city of #{hm.name} \n"
end


prices_all = user_selected_city.map do |hm|
	hm.price 
end	

total_prices = prices_all.reduce(0.0) do |sum, num|
	sum += num
end

avge = total_prices / prices_all.length

puts "\n\nThe average price of a house in #{input_2} is: #{avge}"

puts "\n\nYou can select also a specific price among these : \n\n"

prices_all.each do |price|
	print "#{price} | "
end

input_3 = gets.chomp.to_i

user_city_by_price = homes.find do |hm|
	hm.price == input_3
end

puts "\n\nSo the home with that price is #{user_city_by_price.name} in #{user_city_by_price.city}.\n\n"