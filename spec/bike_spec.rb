require 'bike'

describe Bike do
	let(:my_bike){Bike.new}

	it 'is not broken by default' do
		my_bike.should_not be_broken
	end

	it "should break and then be broken" do
		my_bike.break!
		my_bike.should be_broken
 	end

end