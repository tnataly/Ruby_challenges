=begin
FizzBuzz is a software test that is sometimes used to torture developers during job interviews. 
•Write a program that prints the numbers from 1 to 100
•For multiples of three, print “Fizz” instead of the number
•For multiples of five, print “Buzz” instead of the number
•For numbers which are multiples of both three and five, print “FizzBuzz” instead of the number
=end

puts "FizzBuzz test results"
=begin
	
i = 1
while i <= 100
	if (i % 3 == 0) && (i % 5 == 0) then puts "FizzBuzz"
	elsif (i % 3 == 0) then puts "Fizz"
	elsif (i % 5 == 0) then puts "Buzz"
	else puts i	
	end	
	i += 1 
end
=end

(1..100).each do |i|
	
	if (i % 3 == 0) && (i % 5 == 0) then puts "FizzBuzz"
	elsif (i % 3 == 0) then puts "Fizz"
	elsif (i % 5 == 0) then puts "Buzz"
	else puts i	
	end	
	
end