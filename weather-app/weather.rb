require 'yahoo_weatherman'

def lookup_weatherman
	puts "Choose the location, please:"
	location = gets
	#retain all weather info by location or zipcode from weatherman
	client = Weatherman::Client.new #:lang  => 'ru' # ru there is a problem with encoding in my console
	client.lookup_by_location(location)
end

def current_conditions(c)
	
	#access to parameters inside c and parse it
	puts "I found current weather conditions for #{c.condition['date'].to_time}
	in #{c.location['city']}, #{c.location['region']}, #{c.location['country']}
	#{c.condition['text'].downcase}, #{c.condition['temp']} #{c.units['temperature']}
	wind speed #{c.wind['speed']} #{c.units['speed']}
	atmosphere pressure #{c.atmosphere['pressure']} #{c.units['pressure']}
	"
end

def show_forecast(c)
	# get the forecast and parse it as array of hashes
	puts "Forecast on the next 5 days:"
	c.forecasts.each do |f|
		# choose correct weekday depend of the number of day in week
		if f['date'].strftime("%u") == Time.now.strftime("%u")	 
			 weekday = "Today"
		elsif f['date'].strftime("%u").to_i == Time.now.strftime("%u").to_i + 1
			 weekday = "Tomorrow"
		else 
			 weekday = f['date'].strftime("%A")
		end	
 	puts "#{weekday} is going to be #{f['text']} with a low of #{f['low']} and a high of #{f['high']} degrees celsius."
	end
end

def html_forecast(c)
	#make a pretty html from forecast
	f = File.open("weather_output.html", "w+") 
	f << c.parsed_description
end

c = lookup_weatherman
current_conditions(c)
show_forecast(c)
html_forecast(c)