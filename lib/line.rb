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

	def last_station
		stations.last
	end

	def first_station
		stations.first
	end

	def next_station(current_station,toward)
		if toward == stations.last
		  find_next_station(current_station,stations)
		else
			return find_next_station(current_station,stations.reverse)
		end

	end

	def find_next_station(current_station, station_list)
		index   = find_index(current_station,station_list) +1
    station_list.values_at(index).first
	end

	def find_index(current_station,station_list)
	 station_list.find_index{|station| station == current_station} 
	end

	def create_tunnel(origin_station,destination_station)
		 tunnel = Tunnel.new
		 tunnel.name = origin_station.name + "-" + destination_station.name
		 origin_station.add(tunnel)
		 destination_station.add(tunnel)
	end
end