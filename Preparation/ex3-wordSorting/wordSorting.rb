puts "Gimme a string I will sort, YO"
string_to_sort = gets.chomp

string_to_sort = string_to_sort.gsub(/\W/, ' ')
string_to_sort= string_to_sort.split
string_to_sort = string_to_sort.sort!
string_to_sort = string_to_sort.join(",")
puts string_to_sort.upcase