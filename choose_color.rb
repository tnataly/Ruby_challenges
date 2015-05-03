print "Enter your favourite color: "
fav_color = gets.downcase.chomp
if fav_color == "red" then 	puts "Red like fire!"
elsif fav_color == "orange" then puts "Orange like, well... an orange."
elsif fav_color == "yellow" then puts "Yellow daffodils are so pretty in the spring!"
elsif fav_color == "green" then puts "Have you been to the Emerald City in Oz?"
elsif fav_color == "blue" then puts "Blue like the sky!"
elsif fav_color == "purple" then puts "Purple plums are the tastiest."
else puts "Hmm, well I don't know what that color is"
end

print "\nEnter your favourite color: "
fav_color = gets.downcase.chomp
case fav_color 
when "red" 
	puts "Red like fire!"
when "orange" 
	puts "Orange like, well... an orange."
when "yellow" 
	puts "Yellow daffodils are so pretty in the spring!"
when "green"  
	puts "Have you been to the Emerald City in Oz?"
when "blue" 
	puts "Blue like the sky!"
when "purple" 
	puts "Purple plums are the tastiest."
else 
	puts "Hmm, well I don't know what that color is"
end		
		
		
		