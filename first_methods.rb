def my_first_method
	puts "Hello, this is my first method in Ruby"
end

def two_plus_two
	puts "Two plus two equals "+ (2+2).to_s
end

def summ_of_two(num1, num2)
	puts "#{num1} plus #{num2} equals #{num1+num2}"
end

#my_first_method
#two_plus_two
puts "Enter 2 numbers, please"
num1 = gets.to_f
num2 = gets.to_f
summ_of_two(num1, num2)
