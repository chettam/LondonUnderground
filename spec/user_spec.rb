require_relative '../lib/user'

describe User  do

	let(:user) {User.new}
	let(:train) {Train.new}

	context "should have" do
		it "have a name" do
			user.name = "JB"
			expect(user.name).to eq("JB")
		end
	end

	context "should know" do
		it "if the user currently inside LU" do
			user.is_inside_lu = true
			expect(user.is_inside_lu?).to  be_true
		end

	# 	it "if a user is in a train" do
	# 		user.is_inside(train)
	# 		expect(user.train).to be_a(Train)
	# 	end
	end
	context "should by default" do
		it "set the user to be outside " do
			expect(user.is_inside_lu?).not_to be_true
		end
	end
end