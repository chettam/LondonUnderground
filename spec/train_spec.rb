require_relative '../lib/train'

describe Train  do

	let(:train) {Train.new}
	let(:line) {Line.new}



	context "should have" do

		it "a capacity" do
			train.capacity = 100
			expect(train.capacity).to eq(100)
		end

		it "a direction" do
			create_line
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

	end

	context "should by default" do
		it "be opened" do
			expect(train.is_operational?).to be_true
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