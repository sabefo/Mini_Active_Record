class SuperPerson

	def initialize(name)
		self.name
	end

	def self.name
		puts "Sirve en SuperPerson"
	end
end


class Person < SuperPerson

	# def initialize(clase, name)
	# 	@name = name
	# 	puts self
	# 	clase.name
	# end

	# def self.name
	# 	puts "Sirve"
	# end
end

persona = Person.new("Santiago")
