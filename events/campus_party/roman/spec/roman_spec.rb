require 'roman'

describe "Conversao de numeros romanos para arábicos" do
  
	it "should return 1 when passing I" do
	  r = Roman.new("I")
	  r.int_value.should == 1
	end
	it "should return 2 when passing II" do
	  r = Roman.new("II")
	  r.int_value.should == 2
	end
	
	it "should return 5 when passing V" do
	  r = Roman.new("V")
	  r.int_value.should == 5
	end

	it "should return 10 when passing X" do
	  r = Roman.new("X")
	  r.int_value.should == 10
	end
	
	it "should return 50 when passing L" do
	  r = Roman.new("L")
	  r.int_value.should == 50
	end

	it "should return 100 when passing C" do
	  r = Roman.new("C")
	  r.int_value.should == 100
	end
	
	it "should return 500 when passing D" do
	  r = Roman.new("D")
	  r.int_value.should == 500
	end
	
	it "should return 1000 when passing M" do
	  r = Roman.new("M")
	  r.int_value.should == 1000
	end

	it "should return 20 when passing XX" do
	  r = Roman.new("XX")
	  r.int_value.should == 20
	end

	it "should return 30 when passing XXX" do
	  r = Roman.new("XXX")
	  r.int_value.should == 30
	end

	it "should return 15 when passing XV" do
	  r = Roman.new("XV")
	  r.int_value.should == 15
	end
	
	it "should return 4 when passing IV" do
	  r = Roman.new("IV")
	  r.int_value.should == 4
	end
end