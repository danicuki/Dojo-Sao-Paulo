require 'lib/roman.rb'

describe "Programa que converte números romanos" do
  
	it "O numero romano I em arabicos é 1" do
	  Roman.to_integer("I").should == 1
	end
	
	it "O numero romano V em arabicos é 5" do
	  Roman.to_integer("V").should == 5
	end
	
	it "O numero romano X em arabicos é 10" do
	  Roman.to_integer("X").should == 10
	end
	
	it "O numero romano L em arabicos é 50" do
	  Roman.to_integer("L").should == 50	  
	end
	
	it "O numero romano C em arabicos é 100" do
	  Roman.to_integer("C").should == 100
	end

	it "O numero romano D em arabicos é 500" do
	  Roman.to_integer("D").should == 500
	end
	
	it "O numero romano M em arabicos é 1000" do
	  Roman.to_integer("M").should == 1000
	end
	
	it "O numero romano II em arabicos é 2" do
	  Roman.to_integer("II").should == 2
	end
	
	it "O numero romano III em arabicos é 3" do
	  Roman.to_integer("III").should == 3
	end
	
	it "O numero romano IV em arabicos é " do
	  
	end

end