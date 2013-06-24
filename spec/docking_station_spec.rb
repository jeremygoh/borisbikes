require 'docking_station'

describe DockingStation do

	let(:station) { DockingStation.new }
	it "has no bikes" do
		station.has_bikes?.should be_false
	end

	it 'has bikes after receiving a bike' do
		station.receive :bike
		station.has_bikes?.should be_true
	end

	it 'rents a bike and has one less bike' do
		station.receive :bike
		station.rent_bike
		station.has_bikes?.should be_false
	end
	##the bike that is rented should be a working bike

	it "cant rent a bike if it has no bikes" do
		station.rent_bike.should eq "No bikes to rent."
	end

	it "cant receive a bike if it is full, i.e. 10 bikes there" do
		10.times{station.receive :bike}
		station.receive(:bike).should eq "Can't receive as docking station is full."
	end
end

