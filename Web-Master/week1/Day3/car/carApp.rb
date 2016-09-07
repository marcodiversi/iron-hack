class CarDealer
    def initialize(inventory)
        @inventory = inventory
    end
    
    def print_cars(print_cars)
        @inventory.each do |brand, car|
            if brand == brand
                puts brand.to_s + ": " + car.to_s
            end
        end
    end
end


car_dealer = {
    :Ford => ["Mustang", "Civic", "Fiesta", "Ka"],
    :Ferrari => ["Testarossa", "Special","Nicecar","GT"],
    :Lamborghini => ["Miura", "Contact","Panther","GTO"],
    :BMW => ["Black", "German", "Something", "Bmw car"]
}


my_car = CarDealer.new(car_dealer)
my_car.print_cars("Ferrari")

# high_capacity_homes = homes.select do |hm|
#   # Keep hm only if its capacity is 4 or greater
#   hm.capacity >= 4
# end
