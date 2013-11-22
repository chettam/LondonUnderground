require_relative '../lib/train_container'
# since we cannot instantiate a module, we will create an artificial class for testing purpose
class ContainerHolder ; include TrainContainer ;end

describe "train_container"  do
	
	let (:holder) {ContainerHolder.new}	
	
	context "should have" do

	end

	context "should know" do
	
	end
	context "should by default" do
	
	end
end