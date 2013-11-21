require_relative 'public_container'

class Station

	include PublicContainer

	attr_accessor :line

	def initialize
		self.is_opened = true
	end
	


	
end