require_relative '../lib/user'

describe User  do

	let(:user) {User.new}

	context "should have" do
		it "have a name" do
			user.name = "JB"
			expect(user.name).to eq("JB")
		end
	end

	context "should know" do
		it "if the user currently inside LU" do
			user.is_inside_lu
			expect(user.is_inside_lu?).to  be_true
		end
	end
	context "should by default" do
		it "set the user to be outside " do
			expect(user.is_inside_lu?).not_to be_true
		end
	end
end