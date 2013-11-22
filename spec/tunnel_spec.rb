require_relative '../lib/tunnel'

describe Tunnel  do

	let(:tunnel) {Tunnel.new}
	let(:train) {Train.new}
	let(:line) {Line.new}

	context "should have" do
		it "a name" do
			tunnel.name = "Northern Line"
			expect(tunnel.name).to eq ("Northern Line")
		end

		it "a name like stationA.name-StationB.name" do
			stationA = Station.new
			stationA.name = "Bank"
			stationB = Station.new
			stationB.name = "Moorgate"
			line.create_tunnel(stationA,stationB)
			expect(stationA.tunnels.first.name).to eq("Bank-Moorgate")
		end
	end
	context "should know" do

		it "if it is opened" do
			tunnel.is_opened = true
			expect(tunnel.is_opened?).to be_true
		end

		it "if it is closed" do
			tunnel.is_opened = false
			expect(tunnel.is_opened?).to be_false
		end

		it "if it has a train" do
			tunnel.has = train
			expect(tunnel.has).to eq(train)
		end

	end

	context "should by default" do
		it "be opened" do
			expect(tunnel.is_opened?).to be_true
		end
		
	end
end