class Game
	attr_reader :name, :systems
	#name is just going to be a string
	#systems is a hash with systems as a key with the console as the key, and 
	#a second hash with the price and quantity. I need to make sure that this info
	#is never going to be visible to the client. 

	def initialize(name)
		@name = name
		@systems = Hash.new
	end

	def update_systems(system, price, quantity)
		@systems[self.class.game_symbol(system)] = [price, quantity]
	end

	def remove_system(system)
		@systems.delete(self.class.game_symbol(system))
	end

	def self.game_symbol(string)
		string.downcase.gsub(" ", "_").to_sym
	end
end

prince_of_persia = Game.new("Prince Of Persia")
prince_of_persia.update_systems("Gameboy", 14.99, 1)
prince_of_persia.update_systems("PlayStation 4", 30, 4)
puts prince_of_persia.inspect