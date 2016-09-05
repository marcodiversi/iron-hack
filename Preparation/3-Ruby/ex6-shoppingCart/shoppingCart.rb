require 'date'

class ShoppingCart
  def initialize
    @items = []
  end

  def add_item(item)
    @items.push(item)
  end

  def checkout
  	total = 0
  	for item in @items
  		total = total + item.price
  	end
  	if @items.length > 5
  		total = total * (1 - 0.10)
  	end
  	total
  end
end

class Item 
  def initialize(name, price)
      @name = name
      @price = price
  end

  def price
      price = @price
      @price = price
      price
  end
end

class Houseware < Item
  def price
  	price = @price
  	if (price >= 100) 
  		@price = price * (1 - 0.05)
  	end
  end
end

class Fruit < Item
  def price
  	price = @price
    today = Date.today
    #puts today 
  	if (today.saturday? == true || today.sunday? == true)
  		@price = price * (1 - 0.10)
  	end
    @price
  end
end


marco_cart = ShoppingCart.new

banana = Fruit.new("Banana", 10)
vaccuum = Houseware.new("Vaccuum", 150)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)

marco_cart.add_item(oj)
marco_cart.add_item(rice)
marco_cart.add_item(banana)

puts "Your total today is #{marco_cart.checkout}$. Have a nice day!"
