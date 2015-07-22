# Interview challenge
=begin
# Find all the US phone numbers in HTML files underneath /space - not all files are HTML files in the directories.

Files will be named /space/*.html

US phone numbers look like this: 650-458-8929	
=end

# Browse only *.html files in directory one by one
Dir["./space/**/*.html"].each do |file_name|
	
	# Read lines in the file & check whether it maches the US Phone number format
	File.readlines(file_name).each do |line|

		# Phone formats : 1234567890, 123-456-7890, 123.456.7890, 123 456 7890, (123) 456 7890
		regexp = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/
		
		if line =~ regexp 
			puts line.scan(regexp).join
		end
		
	end
end