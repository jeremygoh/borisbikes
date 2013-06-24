require 'van'

describe Van do
	let(:my_van){Van.new}

	it "should have no bikes initially" do 
		my_van.has_bikes?.should eq false
	end

	it "should be able to receive a a bike" do
		my_van.receive :bike
		my_van.has_bikes?.should be_true
	end

	it "should be able to release a bike" do
		my_van.receive :bike
		my_van.release :bike
		my_van.has_bikes?.should be_false
	end

	it "shouldn't be able to release a bike if it doesn't have any" do
		my_van.release(:bike).should eq "Can't release a bike as don't have any"
	end

	it "shouldn't be able to receive a bike if it is full, i.e. it has 10 bikes" do
		10.times{my_van.receive(:bike)}
		my_van.receive(:bike).should eq "Can't receive anymore bikes as full"
	end

	it "shouldn't recceive a working bike" do
		pending
	end

	it "shouldn't release a broken bike" do
		pending
	end

end
=begin
	it "should receive a bike and have one more bike" do
	Van.new.respond_to?(:receive).should be_true
    end

 	it "should fix a bike" do
 	Van.new.respond_to?(:fix).should be_true
    end

 	it "should release a bike" do
 	Van.new.respond_to?(:release).should be_true
    end
 
 	it "should hold bikes" do
 	Van.new.respond_to?(:hold).should be_true
    end
=end    