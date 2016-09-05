=begin

foods = ["Pizza", "Truffle", "Hamburger"]

lengths = foods.map do |dish|
	dish.length
end

p foods
p lengths

=end

=begin

cities = ["boston", "houston", "medellin"]

capitalized = cities.map do |city|
	city.capitalize
end

p cities
p capitalized
=end

=begin

added_one = []
[1,2,3].each do |item|
	added_one.push(item+1)
end

print added_one

=end

added_one =[]
[1,2,3].map do |item|
	added_one.push(item+1)
end

print added_one