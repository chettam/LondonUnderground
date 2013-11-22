require_relative '../lib/line'

describe Line  do

	let(:line) {Line.new}
	let(:station) {Station.new}
	let(:tunnel) {Tunnel.new}
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

		it "last station" do
			create_line
			expect(line.last_station.name).to eq("Old Street")
		end

		it "first station" do 
			create_line
			expect(line.first_station.name).to eq("bank")
		end

		it "that tunnel closure is closing the line" do
		end



	end
	context "should by default" do
		it "be opened" do
			expect(line.is_opened?).to be_true
		end

	end

	def create_line
		station_names =["bank","moorgate","Old Street"]
		station_names.each do|station_name|
			station = Station.new
			station.name = station_name
			line.add(station)
		end
	end
end