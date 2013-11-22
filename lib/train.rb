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

	def move(line,toward)
		next_station = line.next_station(@is_at,toward)
		next_tunnel =  (@is_at.tunnels & next_station.tunnels).first
		@is_at = @is_at.is_a?(Station) ? next_tunnel : next_station
	end
end