require "../lib/garage.rb"

describe Garage do

    it "can receive bike" do
       Garage.new.respond_to?(:receive).should be_true
     end

     it "can fix a bike" do
     	Garage.new.respond_to?(:fix).should be_true
     end

     it "can release a bike" do
     	Garage.new.respond_to?(:release).should be_true
     end

     it "can hold a bike" do
     	Garage.new.respond_to?(:hold).should be_true
     end
end
