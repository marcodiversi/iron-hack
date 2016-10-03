# # exercise 1
# # Write a method power that takes in two integers (base and exponent) and returns the base 
# # raised to the power of exponent. Do not use Ruby’s ** operator for this!

# # > power(3,4)
# # => 81 # (3*3*3*3)

require 'pry'

def power(base, exponent)
	result = base
	while exponent > 1 
		result = result * base
		exponent = exponent - 1 
	end
	puts result
end

puts "> power(3,4)"
power(3,4)
puts " "

# # exercise 2
# # Write a method that gets a string and return a new string with the same letters in reverse order.

# # > reverse("You are not going anywhere")
# # => "erehwyna gniog ton era ouY"

def reverse(string)
	i = string.length
	while i >= 0
	print string[i]
	i = i - 1
	end
end

 puts "> reverse(You are not going anywhere)"
puts reverse("You are not going anywhere")
puts " "

# # exercise 3
# # Write a method factorial that receives a number and returns the product of every number up to the 
# # current number multiplied together.

# # > factorial(5)
# # => 120  # from 1*2*3*4*5

def factorial(f)
	i = 1
	result = 1
	while i < f
	   result = result * (i + 1)
	   i  =  i + 1
	end
	puts result
end

 puts "> factorial(5)"
factorial(5)
puts " "

# exercise 4
# Write a method that gets a number of minutes and returns a string converting those minutes in hours:minutes format.

# > time_conversion(500)
# => "8:20"

def time_conversion(time)
	hours = time / 60
	minutes = time - (hours * 60)
	puts hours.to_s + ":" + minutes.to_s
end

puts "> time_conversion(500)"
time_conversion(500)
puts " "

# exercise 5
# Write a method that receives a string and returns the number of vowels in that string. You may assume that 
# all the letters are lower cased. You can treat "y" as a consonant.

# > count_vowels("hello")
# => 2

def count_vowels(string)
  chars = string.chars
  vowels = ["a", "e", "i", "o", "u"]
  count = 0
  chars.each do |char|
    vowels.each do |vowel|
      if char == vowel
        count += 1
        break
      end
    end
  end
puts count
end

puts "> count_vowels(hello)"
count_vowels("hello")
puts " "

# exercise 6

# Write a method uniqueness that takes in an array of items and returns the array without any duplicates. 
# Don’t use Ruby’s uniq method!

# uniques([1,5,”frog”, 2,1,3,”frog”])
# => [1,5,”frog”,2,3]

def uniques(array)
    members = []
    array.each do |busted|
        unless members.include?(busted)
        members << busted
        end
    end
    print members
end

puts "> uniques (1,5,frog,2,1,3,frog)"
uniques([1,5,'frog', 2,1,3,'frog'])
puts " "
puts " "



# exercise 7

# Write a method that receives an integer (greater than one) and returns true if it is prime; otherwise return false.

# > is_prime?(7)
# => true
# > is_prime?(14)
# => false

def is_prime(number)
    	if number == 0 || number == 1
		return false
	end

	i = 2
	limit = number / i
	while i < limit
		if number % i == 0
			return false
		end
		i += 1
		limit = number / i
	end
	return true
end


puts ("> is_prime(7)")
puts is_prime(7)
puts ("> is_prime(14)")
puts is_prime(14)
puts " "

# exercise 8
# Write a method that gets a string and returns true if it is a palindrome. 
# A palindrome is a string which reads the same backward or forward. Assume that there are no spaces; 
# only lowercase letters will be given.

# > palindrome?("radar")
# => true
# > palindrome?("bear")
# => false

def palindrome(string)
	reverse = string.reverse
	if reverse == string
		return true
	else
		return false
	end
end


puts "> palindrome(radar)"
puts palindrome("radar")
puts " > palindrome(bear)"
puts palindrome("bear")
puts " "


# exercise 9

# Write a method that receives a string of lowercase letters and spaces,
# producing a new string that capitalizes the first letter of each word.

# capitalize_words("how is the capital today?)
# => "How Is The Capital Today?"


def capitalize(string)
	puts string.capitalize
end

puts "how is the capital today?"
capitalize("how is the capital today?")
puts " "

# exercise 10 
# Write a method that gets an array of positive and negative numbers.
# If a pair of numbers in the array sums to zero, return the positions of those two numbers. 
# If no pair of numbers sums to zero, return nil. 
# And if more than two pairs fits the condition, return the first one that appears.

# two_sum([2, -5, 10, 5, 4, -10, 0 ])
# => [1,3]

#to finish today ! !!

def two_sum(array)
	array.each do |num|
		puts num
	end
end

puts "two_sums[2, -5, 10, 5, 4, -10, 0 ] "
two_sum([2, -5, 10, 5, 4, -10, 0 ])
puts " "