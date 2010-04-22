require "lib/numeric_maze"

describe NumericMaze do
  
  it "should return [2] when going from 2 to 2" do
    NumericMaze.solve(2,2).should == [2]
  end
  
  it "should return [1,3] when going from 1 to 3" do
    NumericMaze.solve(1,3).should == [1,3]
  end
  
  
  
end