class Animal
  def initialize(name)
    @name = name
  end

  def describe
    puts "This animal's name is #{@name}"
  end


dog = Dog.new "Winston Furchill"
cat = Cat.new "David Meowie"
human = Human.new "Johnny Appleseed", 12000

end