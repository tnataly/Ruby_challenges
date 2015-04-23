=begin
This script shows the power of ruby math and strings....
=end
def some_magic_math(first_num)
	result = (((first_num + 5) * 2 - 4) / 2 - first_num)
end

print "Give me a number "
puts "Your final number is #{some_magic_math(gets.to_i)}"



