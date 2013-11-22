require_relative '../lib/train'

describe Train  do

	let(:train) {Train.new}
	let(:line) {Line.new}
	let(:station) {Station.new}
	let(:tunnel) {Tunnel.new}



	context "should have" do

		it "a capacity" do
			train.capacity = 100
			expect(train.capacity).to eq(100)
		end

		it "a direction" do
			create_line
			train.toward = line.last_station
			expect(train.toward.name).to eq ('Old Street')
			train.toward = line.first_station
			expect(train.toward.name).to eq ('Bank')	
		end
	end
	context "should know" do
		it "if it is operational" do
			train.is_operational = true
			expect(train.is_operational?).to be_true
		end

		it "if it is operational" do
			train.is_operational = false
			expect(train.is_operational?).to be_false
		end

		it "it's current location" do
			station.name ="Bank"
			train.is_at = station
			expect(train.is_at.name).to eq("Bank")
		end
		it "it's current location could be a tunnel" do
			station.name ="Bank"
			tunnel.name = "Bank-Moorgate"
			station.add(tunnel)
			train.is_at = station.tunnels.first
			expect(train.is_at.name).to eq("Bank-Moorgate")
		end
	end

	context "should by default" do
		it "be opened" do
			expect(train.is_operational?).to be_true
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