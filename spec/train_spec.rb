require_relative '../lib/train'

describe Train  do

	let(:train) {Train.new}

	context "should have" do

		it "a capacity" do
			train.capacity = 100
			expect(train.capacity).to eq(100)
		end
	end

	context "should by default" do
		
	end
end