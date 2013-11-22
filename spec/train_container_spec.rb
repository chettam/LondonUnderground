require_relative '../lib/train_container'
# since we cannot instantiate a module, we will create an artificial class for testing purpose
class ContainerHolder ; include TrainContainer ;end

describe "train_container"  do
	
	let (:holder) {ContainerHolder.new}	
	let (:train) {Train.new}
	
	context "should have" do

	end

	context "should know" do
		it "if it has a train" do
			holder.has = train
			expect(holder.has).to eq(train)
		end
	end
	context "should by default" do
	
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