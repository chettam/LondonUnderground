require_relative '../lib/tunnel'

describe Tunnel  do

	let(:tunnel) {Tunnel.new}

	context "should have" do
		it "a name" do
			tunnel.name = "Northern Line"
			expect(tunnel.name).to eq ("Northern Line")
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

	end

	context "should by default" do
		it "be opened" do
			expect(tunnel.is_opened?).to be_true
		end
		
	end
end