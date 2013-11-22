require_relative '../lib/line'

describe Line  do

	let(:line) {Line.new}
	let(:station) {Station.new}
	let(:tunnel) {Tunnel.new}
	let(:train) {Train.new}
	context "should have" do
		it "a name" do
			line.name = "Northern Line"
			expect(line.name).to eq ("Northern Line")
		end

		it "a station list" do
			station.name = "old_street"
			line.add(station)
			expect(line.stations.first.name).to eq ("old_street")
		end

	end

	context "should know" do
		it "if it is opened" do
			line.is_opened = true
			expect(line.is_opened?).to be_true
		end

		it "if it is closed" do
			line.is_opened = false
			expect(line.is_opened?).to be_false
		end

		it " it's last station" do
			create_line
			expect(line.last_station.name).to eq("Old Street")
		end

		it "it's first station" do 
			create_line
			expect(line.first_station.name).to eq("Bank")
		end

		it "it's next station" do
			create_line
			train.toward = line.last_station
			train.is_at  = line.first_station
			next_stop = line.next_station(train.is_at,train.toward)
			expect(next_stop.name).to eq ("Moorgate")
		end

		it "how to add a tunnels between stations" do
			create_line
			next_stop = line.next_station(line.first_station,line.last_station)
			line.create_tunnel(line.first_station,next_stop)
			expect(line.first_station.tunnels).to eq(next_stop.tunnels)
		end
	end
	context "should by default" do
		it "be opened" do
			expect(line.is_opened?).to be_true
		end

	end

	def create_line
		station_names =["Bank","Moorgate","Old Street"]
		station_names.each do|station_name|
			station = Station.new
			station.name = station_name
			line.add(station)
		end
	end
end