
def adding_numbers_of_number(string_number)
	new_num = 0
	magic_num = string_number.chomp.split("").map{|s| s.to_i}
	magic_num.each do |b|
		new_num += b
	end
 	return new_num
end

def message_output(magic_num)
	case magic_num 
		when 1 
			puts "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
		when 2
			puts "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
		when 3
			puts "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
		when 4
			puts "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
		when 5
			puts "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
		when 6
			puts "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
		when 7
			puts "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
		when 8
			puts "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
		when 9 
			puts "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
	else 
		puts "Something is wrong. I could find your number."
	end	
end

print "Enter your birthdate in forman MMDDYYYY :"
magic_num = adding_numbers_of_number(gets)

if magic_num.to_s.length > 1 
	magic_num = adding_numbers_of_number(magic_num.to_s)
end

#puts "Magic num after second iteration is: #{magic_num}"
if magic_num.to_s.length > 1 
	magic_num = adding_numbers_of_number(magic_num.to_s)
end

#puts "Magic num after third iteration is: #{magic_num}"

puts "Your numerology number is #{magic_num}"
message_output(magic_num)

