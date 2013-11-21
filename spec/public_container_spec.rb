require_relative '../lib/public_container'
# since we cannot instantiate a module, we will create an artificial class for testing purpose
class ContainerHolder ; include PublicContainer ;end

describe "public_container"  do
	
	let (:container) {ContainerHolder.new}	
	
	context "should have" do
		it "a capacity" do
			container.capacity = 100
			expect(container.capacity).to eq(100)
		end

		it "a name" do
			container.name = "Container"
			expect(container.name).to eq ("Container")
		end
		
	end

	context "should know" do

		it "if it is opened" do
			container.is_opened = true
			expect(container.is_opened?).to be_true
		end
	it "if it is closed" do
		container.is_opened = false
		expect(container.is_opened?).to be_false
	end
	
	end
	context "should by default" do
	
	end
end