require "lib/waterflow"
describe "Waterflow" do
  
	it "Começando com 0 litros e vazao de 5 litros" do
	  Waterflow.new(0,[5]).flow.should == [[0,0]]
	end
	
	it "Começando com 5 litros e vazao de 5 litros" do
	  Waterflow.new(5,[5]).flow.should == [[5,0],[0,5]]
	end
	
	it "Começando com 0 litros e vazão de 5 e 5 litros" do
	  Waterflow.new(0,[5,5]).flow.should == [[0,0,0]]
	end
	
	it "Começando com 5 litros e vazao de 5 e 5 litros" do
	  Waterflow.new(5,[5,5]).flow.should == [[5,0,0],[0,5,0],[0,0,5]]
	end
	
	it "Começando com 5 litros e vazao de 3 litros" do
	  Waterflow.new(5,[3]).flow.should == [[5,0],[2,3],[0,5]]
	end

  it "O proximo tempo de [5,0] com vazao de 2 é [3,2]" do
    Waterflow.next([5,0], [2]).should == [3,2]
  end

  it "O proximo tempo de [5,0] com vazao de 3 é [2,3]" do
    Waterflow.next([5,0], [3]).should == [2,3]
  end
	
end

