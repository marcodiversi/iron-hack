class Car 
    attr_accessor(:noise, :speed1) 
    
    def initialize(noise,speed1)
    @noise = noise
    @speed1 = speed1
    end
    
def self.speed_control(speed1)
    puts " enter speed "
    @speed1 = gets.chomp
    if (@speed1 > 100)
        puts "Too fast !"
    end
end
end
        
my_car1 =Car.new("Broom",100)
my_car2 =Car.new("BROOOOM",80)

puts my_car1.noise
puts my_car2.noise

puts my_car1.speed1
puts my_car2.speed1



