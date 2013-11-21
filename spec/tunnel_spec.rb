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

	end

	context "should by default" do
		
	end
end