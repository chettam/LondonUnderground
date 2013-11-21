require_relative 'public_container'

class Station

	include PublicContainer

	def initialize
		self.is_opened = true
	end

	
end