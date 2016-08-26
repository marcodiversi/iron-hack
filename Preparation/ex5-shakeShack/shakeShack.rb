class MilkShake
  def initialize
    @base_price = 3
    @ingredients = [ ]    
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end

  def price_of_milkshake
  #Let's establish what our counter should be before we start adding ingredients into the mix
  total_price_of_milkshake = @base_price
  #Add each ingredients price to our total
  @ingredients.each do |ingredient|
    total_price_of_milkshake += ingredient.price
    end
  #return  our total price to whoever called for it
   total_price_of_milkshake
    end
end

class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end
end

class ShackShop
	def initialize
		@list = [ ]
	end

	def add_milkshake(milkshake)
		@list.push(milkshake)
	end


	def price_of_list
		total_price_of_list = 0
		@list.each do |milkshake|
			total_price_of_list += milkshake.price_of_milkshake
		end
		total_price_of_list
	end

end



shop = ShackShop.new

chocolate_chips = Ingredient.new("Chocolate Chips", 1)
banana = Ingredient.new("Banana", 2)
pear = Ingredient.new("Pear", 3)
mint = Ingredient.new("Mint", 4)
bacio = Ingredient.new("Bacio", 5)

nizars_milkshake = MilkShake.new

nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(pear)
nizars_milkshake.add_ingredient(bacio)

marco_milkshake = MilkShake.new

marco_milkshake.add_ingredient(banana)
marco_milkshake.add_ingredient(mint)
marco_milkshake.add_ingredient(chocolate_chips)



# GOOD SHIT 
puts "Nazier milkshape price"
puts nizars_milkshake.price_of_milkshake

puts "Marco milkshape price"
puts marco_milkshake.price_of_milkshake


# So now, your job is to put this all together. We built the ingredient and milkshake classes, 
# now you have to build the shack shop class. Here’s some things you're going to need for this class:

# - An empty list where we can add milkshakes
# - A method to add milkshakes to this list
# - A method to checkout all of the milkshakes in our list

# Hint: Model this class in the same way we created the milkshake class, 
# and call the price_of_milkshake method to return a milkshakes total price when checking out.

