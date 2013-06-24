require "../lib/van.rb"

describe Van do
	it "should receive a bike" do
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
end
