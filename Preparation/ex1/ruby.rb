puts "What file do you wanna use as a source to copy in a new file? options are : source1.txt or source2.txt"
source = gets.chomp
puts "How do you wanna call the new file ?"
destination = gets.chomp

new_file = IO.read(source)

IO.write(destination,new_file)   #IO.write(new_file_name, source_to_get_data)