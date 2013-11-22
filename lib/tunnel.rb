require_relative 'public_container'
require_relative 'train_container'

class Tunnel

	include PublicContainer
	include TrainContainer

	def initialize
		self.is_opened = true
	end

	
end