require '../lib/docking_station.rb'
describe DockingStation do

	let(:station) { DockingStation.new }
	it "has no bikes" do
		station.has_bikes?.should be_false
	end

	it 'has bikes after receiving a bike' do
		station.receive :bike
		station.has_bikes?.should be_true
	end


end