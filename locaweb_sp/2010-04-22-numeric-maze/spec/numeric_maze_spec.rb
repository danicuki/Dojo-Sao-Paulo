require "lib/numeric_maze"

describe NumericMaze do
  
  it "should return [2] when going from 2 to 2" do
    maze = NumericMaze.new 2,2
    maze.solve.should == [2]
  end
  
end