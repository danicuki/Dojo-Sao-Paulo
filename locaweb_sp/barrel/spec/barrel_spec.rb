require "lib/barrel"
require "spec"

describe "barrel" do

	it "should return simple playlist of 2 songs" do
		b = Barrel.new(["first", "tsecond"])
		b.playlist("first", "tsecond").should == ["first", "tsecond"]
	end
	
	it "should return simple playlist of 2 song in a more complex list" do
	  b = Barrel.new(["first", "third", "tsecond"])
		b.playlist("first", "tsecond").should == ["first", "tsecond"]
	end
	
	it "should raise exception when is not possible to build playlist" do
	  b = Barrel.new(["first", "second"])
		lambda {b.playlist("first", "second")}.should raise_error
	end

	it "should return playlist whith tree songs" do
		b = Barrel.new(["first", "thirds", "second"])
 		b.playlist("first", "second").should == ["first","thirds", "second"]
	end
	
	it "should return a music starting with letter " do
	  b = Barrel.new(["first", "thirds", "second"])
		b.song_starting_with("t").should == "thirds"
	end
	
	it "should remove first music from barrel" do
		b = Barrel.new(["ab", "ba", "cc"])
		
	  
	end

end










