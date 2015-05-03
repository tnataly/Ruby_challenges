#While time is less than infinity, puts “I love you”
time = 5
while (time)
	puts "I love you!"
	time = false
end

#While you are good, puts “I love you”
i = 0
good_string = String.new
while i < 13
	good_string += "good"
	i += 1
	#puts "You are good, I love you"
end

#While you are good, puts “I love you”
while good_string.include?("good")
	good_string.slice!((good_string.length - 4) .. good_string.length)
	puts "You are good, I love you"
	#puts good_string
end	

