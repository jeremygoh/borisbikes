require "../lib/model.rb"

describe Cyclist do
	
	it "can rent" do
		Cyclist.new.respond_to?(:rent).should be_true
	end

	it "can ride" do
		Cyclist.new.respond_to?(:ride).should be_true
	end

	it "can break" do
		Cyclist.new.respond_to?(:break).should be_true
	end

end

