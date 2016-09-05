class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end

 ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
 python = ProgrammingLanguage.new("Python", 24, "Dynamic")
 javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
 go = ProgrammingLanguage.new("Go", 6, "Static")
 rust = ProgrammingLanguage.new("Rust", 5, "Static")
 swift = ProgrammingLanguage.new("Swift", 2, "Static")
 java = ProgrammingLanguage.new("Java", 20, "Static")

array_of_languages = [ruby, python, javascript, go, rust, swift, java]

# def array_printer(array)
#   array.each do | language |
#     puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
#   end
# end

#array_printer(array_of_languages)

def array_printer(array)
    array.map do |language|
        puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
    end
end

#array_printer(array_of_languages)

# array_printer(array_of_languages.sort {|a,b| b.age <=> a.age})

# array_printer(array_of_languages.delete_if {|language| language.name == "Go"})

# array_printer(array_of_languages.delete_at(2))  ###it works only if i put TAP instead of MAP into the function WEIRDDD

# array_printer(array_of_languages.compact)

# array_printer(array_of_languages.rotate(2))
