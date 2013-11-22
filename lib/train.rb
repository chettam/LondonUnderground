require_relative 'public_container'

class Train

	attr_accessor :toward , :is_at

	include PublicContainer

	def initialize
		self.is_operational = true
	end

	def is_operational=(status)
		self.is_opened = status
	end

	def is_operational?
		is_opened?
	end
	
end