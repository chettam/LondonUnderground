require_relative 'public_container'
require_relative 'train_container'

class Station

	include PublicContainer
	include TrainContainer

	attr_accessor :line

	def initialize
		self.is_opened = true
		@tunnels       = []
	end
	
	def tunnels
		@tunnels
	end

	def add(tunnel)
		tunnels << tunnel unless tunnel.nil?
	end

	
end