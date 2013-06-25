require 'garage'

describe Garage do
    let(:my_garage){Garage.new}

    it "has no bikes by default" do
        my_garage.has_bikes?.should be_false
    end

    it "can receive a bike and will then have a bike" do
        my_garage.receive(:bike)
        my_garage.has_bikes?.should be_true
    end

    it "can only receive 10 bikes" do
        10.times{my_garage.receive(:bike)}
        my_garage.receive(:bike).should eq "Can't receive anymore bikes as at maximum capacity (10)."
    end

    it "can release a bike and will have one less bike" do
        my_garage.receive(:bike)
        my_garage.release(:bike)
        my_garage.has_bikes?.should be_false
    end
     
end
