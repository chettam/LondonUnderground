require_relative 'public_container'

class Train

	include PublicContainer

	def is_operational=(status)
		self.is_opened = status
	end

	def is_operational?
		is_opened?
	end
	
end