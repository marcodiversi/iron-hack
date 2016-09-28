# # exercise 1
# # Write a method power that takes in two integers (base and exponent) and returns the base 
# # raised to the power of exponent. Do not use Ruby’s ** operator for this!

# # > power(3,4)
# # => 81 # (3*3*3*3)

# require 'pry'

# def power(base, exponent)
# 	result = base
# 	while exponent > 1 
# 		result = result * base
# 		exponent = exponent - 1 
# 	end
# 	puts result
# end

#  puts "> power(3,4)"
# power(3,4)


# # exercise 2
# # Write a method that gets a string and return a new string with the same letters in reverse order.

# # > reverse("You are not going anywhere")
# # => "erehwyna gniog ton era ouY"

# def reverse(string)
# 	i = string.length
# 	while i >= 0
# 	print string[i]
# 	i = i - 1
# 	end
# end

#  puts "> reverse(You are not going anywhere)"
# puts reverse("You are not going anywhere")


# # exercise 3
# # Write a method factorial that receives a number and returns the product of every number up to the 
# # current number multiplied together.

# # > factorial(5)
# # => 120  # from 1*2*3*4*5

# def factorial(f)
# 	i = 1
# 	result = 1
# 	while i < f
# 	   result = result * (i + 1)
# 	   i  =  i + 1
# 	end
# 	puts result
# end

#  puts "> factorial(5)"
# factorial(5)


# exercise 4
# Write a method that gets a number of minutes and returns a string converting those minutes in hours:minutes format.

# > time_conversion(500)
# => "8:20"

# def time_conversion(time)
# 	hours = time / 60
# 	minutes = time - (hours * 60)
# 	puts hours.to_s + ":" + minutes.to_s
# end

# puts "> time_conversion(500)"
# time_conversion(500)


#exercise 5
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


#exercise 6

# Write a method uniqueness that takes in an array of items and returns the array without any duplicates. 
# Don’t use Ruby’s uniq method!

# uniques([1,5,”frog”, 2,1,3,”frog”])
# => [1,5,”frog”,2,3]




# def uniques(array)
# 	result = []
# 	array.each do |element|
# 		unless result.include?(element)
# 			result << element
# 		end
# 	end
# 	puts result
# end

# puts ">> uniques 1,5,frog,2,1,3,frog"
# uniques([1,5,"frog",2,1,3,"frog"])


# def is_prime?(number)
# 	if number == 0 || number == 1
# 		return false
# 	end

# 	i = 2
# 	limit = number / i
# 	while i < limit
# 		if number % i == 0
# 			return false
# 		end
# 		i += 1
# 		limit = number / i
# 	end
# 	return true
# end

# puts ">> is_prime?(7)"
# puts is_prime?(7)
# puts ">> is_prime?(14)"
# puts is_prime?(14)


# def palindrome?(word)
# 	if word == word.reverse
# 		return true
# 	else
# 		return false
# 	end
# end

# puts ">> palindrome?(radar)"
# puts palindrome?("radar")
# puts ">> palindrome?(bear)"
# puts palindrome?("bear")


# def capitalize_words(string)
# 	puts string.split.map(&:capitalize).join(' ')
# end

# puts ">> capitalize_words how is the capital today?"
# capitalize_words("how is the capital today?")



# def two_sum(numbers_array)
# 	[].tap do |result|
# 		numbers_array.each_with_index do |n,i|
# 			numbers_array.each_with_index do |m,j|
# 				if(n+m==0)
# 					until result.length > 1 do
# 						result << i << j
# 					end
# 				end
# 			end
# 		end
# 		return result
# 	end
# end

# puts ">> two_sum([2, -5, 10, 5, 4, -10, 0])"
# puts two_sum([2, -5, 10, 5, 4, -10, 0])


# def greatest_common_factor(num1, num2)
# 	factors_array = []
# 	factors_array << num1.gcd(num2)
# 	puts factors_array.max
# end

# puts ">> greatest_common_factor(12, 16)"
# greatest_common_factor(12, 16)