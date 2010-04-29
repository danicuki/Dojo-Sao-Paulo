require "lib/split.rb"

describe "Splitting the cloud" do
  
	it "a divisao de 1 cloud de 1GB para 1 servidor físico é [[1]]" do
	  Split.new.divide([1],1).should == [[1]]
	end
	
	it "divisao de 1 cloud de 2gb para 1 servidor fisico e [[2]]" do
		Split.new.divide([2],1).should == [[2]]
	end
		
	it "a divisao de 2 clouds de 1Gb cada para 2 servidor fisico [[1],[1]]" do
	  Split.new.divide([1,1],2).should == [[1],[1]]
	end
	
	it "a divisao de 2 clouds de 1 GB cada para 1 servidor fisico deve ser [[1,1]]" do
	  Split.new.divide([1,1],1).should == [[1,1]]
	end
	
	it "a divisao de 1 cloud de 1gb e outro cloud de 2gb em 2 servidores" do
		lambda { Split.new.divide([1,2],2) }.should raise_error()
	end
end