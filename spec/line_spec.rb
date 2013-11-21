require_relative '../lib/line'

describe Line  do

	let(:line) {Line.new}

	context "should have" do
		it "a name" do
			line.name = "Northern Line"
			expect(line.name).to eq ("Northern Line")
		end
	end

	context "should know" do
		it "if it is opened" do
			line.is_opened = true
			expect(line.is_opened?).to be_true
		end

		it "if it is closed" do
			line.is_opened = false
			expect(line.is_opened?).to be_false
		end

	end
	context "should by default" do
		it "be opened" do
			expect(line.is_opened?).to be_true
		end

	end
end