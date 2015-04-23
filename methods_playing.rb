def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour
end
 
def greeting(name)
	current_hour = determine_current_hour
	# puts "Current hour is #{current_hour}"
	if(current_hour > 3 && current_hour <= 12)
		time = "morning"
	elsif(current_hour > 12 && current_hour <= 18)
		time = "afternoon"
	elsif(current_hour > 18 || current_hour <= 3)
		time = "evening"
	end
	puts "Good #{time}, #{name.capitalize}!"
end

def personalized_greeting 
	print "Hi, What's your name? - "
	greeting (gets)
end

personalized_greeting
