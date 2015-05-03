first_hash = {
	"John Doe" => { "occupation" => "student", "email" => "john@example.com", "nickname" => "lucky boy" },
	"Jane Doe" => { "occupation" => "baby", "email" => "jane@example.com", "nickname" => "smily kinder" },
	"Mr. J. Doe" => { "occupation" => "developer", "email" => "jerom@example.com", "nickname" => "too serious" },
}
first_hash.each do |p| 
	puts p
end

second_hash = {
	"John Doe" => { :occupation => "student", :email => "john@example.com", :nickname => "lucky boy" },
	"Jane Doe" => { :occupation => "baby", :email => "jane@example.com", :nickname => "smily kinder" },
	"Mr. J. Doe" => { :occupation => "developer", :email => "jerom@example.com", :nickname => "too serious" },
}

second_hash.each do |p| 
	puts p
end

third_hash = {
	"John Doe" => { occupation: "student", email: "john@example.com", nickname: "lucky boy" },
	"Jane Doe" => { occupation: "baby", email: "jane@example.com", nickname: "smily kinder" },
	"Mr. J. Doe" => { occupation: "developer", email: "jerom@example.com", mood: "too serious" },
}

puts "I'm trying to access to John Doe record. 
He's a #{third_hash["John Doe"][:occupation]}, 
His email is #{third_hash["John Doe"][:email]}
His nickname is #{third_hash["John Doe"][:nickname]}."
	


