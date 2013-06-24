require "../lib/bike.rb"
describe Bike do
	
	it "should break" do
	Bike.new.respond_to?(:break).should be_true
 	end

end