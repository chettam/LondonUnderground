require_relative 'public_container'

class Line

	include PublicContainer

	def initialize
		self.is_opened = true
		@stations 		 = []
	end

	def stations
		@stations
	end

	def add(station)
		stations << station unless station.nil?
	end	

	def last
		stations.last
	end
end