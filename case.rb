print "Enter the weather forecast: "
weather = gets.downcase.chomp
case weather
when 'sunny'
	puts "Let's go to the beach"
when 'cloudy'
	puts "Let's play volleyball"
when 'foggy'
	puts "Let's play mafia at home"
when 'rainy'
	puts "Let's play into puddles"
else 
	puts "I don't know what to do..."
end
	
		