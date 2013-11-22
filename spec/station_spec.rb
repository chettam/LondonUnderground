require_relative '../lib/station'

describe Station  do

	let(:station) {Station.new}
	let(:line) {Line.new}
	let(:tunnel) {Tunnel.new}
	let(:train) {Train.new}

	context "should have" do
		it "a name" do
			station.name = "Northern Line"
			expect(station.name).to eq ("Northern Line")
		end

		it "a tunnel list" do
			tunnel.name = "21"
			station.add(tunnel)
			expect(station.tunnels.first.name).to eq ("21")
		end
	end
	context "should know" do
		
		it "if it is opened" do
			station.is_opened = true
			expect(station.is_opened?).to be_true
		end

		it "if it is closed" do
			station.is_opened = false
			expect(station.is_opened?).to be_false
		end

		it "if it has a train" do
			station.has = train
			expect(station.has).to eq(train)
		end

	end

	context "should by default" do
		it "be opened" do
			expect(station.is_opened?).to be_true
		end
		
	end
end