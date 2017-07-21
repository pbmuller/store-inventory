class Game
	#name is just going to be a string
	#systems is a hash with systems as a key with the console as the key, and 
	#a second hash with the price and quantity. I need to make sure that this info
	#is never going to be visible to the client. 

	def initialize(name, systems) do	
		@name = name
		@systems = Hash.new
	end

	def to_s
		"#{name}"
	end
end