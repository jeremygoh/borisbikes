require "../lib/bike.rb"
describe Bike do
	let(:my_bike){Bike.new}
	it "should break" do
	my_bike.respond_to?(:break).should be_true
 	end

#sort this test out
 	it "has a  working state which can be checked" do
 		my_bike.respond_to?(:state).should be_true
 		my_bike.state.should eq "yes" || "no"
 	end




end