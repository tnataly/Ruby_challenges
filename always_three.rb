=begin
This script shows the math magic. (Simple school trick)
=end

print "Give me a number "
first_num = gets.to_i

# Some manipulation with our n
n = first_num
n += 5
n *= 2
n -= 4
n /= 2

# Substract the first number: 
n -= first_num
=begin
# Here is a different way to understand the sentence: "substract the first number:	"
s = n.to_s
s.slice!(0)
n = s.to_i
=end

puts "My final number is #{n}"
