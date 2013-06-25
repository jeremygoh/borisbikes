require 'cyclist'

describe Cyclist do
	let(:my_cyclist){Cyclist.new}
	
	it "has no bike by default" do
		my_cyclist.has_bike?.should be_false
	end

	it "can rent a bike and will have a bike" do
		my_cyclist.rent(:bike)
		my_cyclist.has_bike?.should be_true
	end

	it "can't rent a bike if it has one already" do
		my_cyclist.rent(:bike)
		my_cyclist.rent(:bike).should eq "Can't rent another bikes as you have one already."
	end

	it "can return a bike and will have no bike after that" do
		my_cyclist.rent(:bike)
		my_cyclist.return(:bike)
		my_cyclist.has_bike?.should be_false
	end

	it "can break a bike and bike is now broken" do
		my_cyclist.rent(:bike)
		my_cyclist.break(:bike)
		###how to check if the bike is broken?
	end
end

