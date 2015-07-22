# Interview challenge
=begin
# Find all the US phone numbers in HTML files underneath /space - not all files are HTML files in the directories.

Files will be named /space/*.html

US phone numbers look like this: 650-458-8929	
=end

# 
Dir["./space/**/*.html"].each do |file_name|
	#File.open(file_name, "r").lines do
	File.readlines(file_name).each do |line|
		regexp = /^(?:\+?1[-. ]?)?\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/
		if line =~ regexp 
			puts line.scan(regexp).join
			# or puts it into another file
			f = File.open("us_phones_output", "w+") 
			f << line.gsub(regexp, '')
		end

		#puts line.gsub(/^(?:\+?1[-. ]?)?\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/, '')
	end
end