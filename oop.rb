class Animal
=begin 
instead of using 
def set_name=(animal_name)
	@name = animal_name
end
def set_type=(animal_type)
	@type = animal_type
end
=end
#attr_writer :name, :type

=begin 
instead of using 
def get_name()
	return @name
end

def get_type
	@type
end
=end
#attr_reader :name, :type

=begin instead of using
#attr_writer :name, :type
#attr_reader :name, :type
=end
attr_accessor :name, :type

end

class Cat < Animal
	def mey
		"meyyyyyyyy"
	end
end
class Dog < Animal
	def bark
		"bark, bark, bark"
	end
end

class Bird < Animal
	def fly
		"Oops, the bird has flown away"
	end
end

a = Cat.new
a.type = "tiger"
a.name = "Alex"

b = Dog.new
b.type = "puppy"
b.name = "Rex"

c = Bird.new
c.type = "owl"
c.name = "Smarty"

puts "There are such animals: 
#{a.type} \"#{a.name}\" who says \"#{a.mey}\"
#{b.type} \"#{b.name}\" who says \"#{b.bark}\"
#{c.type} \"#{c.name}\" who says \"#{c.fly}\"
"
puts a.inspect
puts b.inspect
puts c.inspect