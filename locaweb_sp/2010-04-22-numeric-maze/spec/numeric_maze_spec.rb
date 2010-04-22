require "lib/numeric_maze"

describe NumericMaze do
  
  def solve_maze(from, to)
    NumericMaze.solve(from, to)
  end
  
  it "should return [2] when going from 2 to 2" do
    solve_maze(2,2).should == [2]
  end
  
  it "should return [1,3] when going from 1 to 3" do
    solve_maze(1,3).should == [1,3]
  end
  
  it "should return [2,4,6] when going from 2 to 6" do
    solve_maze(2,6).should == [2,4,6]
  end
  
  it "should return [1,3,5,7] when going from 1 to 7" do
    solve_maze(1,7).should == [1,3,5,7]
  end
  
  it "should return [1,2] when going from 1 to 2" do
    solve_maze(1,2).should == [1,2]    
  end

  it "should return [3,6] when going from 3 to 6" do
    solve_maze(3,6).should == [3,6]    
  end

  it "should return [3,6,12] when going from 3 to 12" do
    solve_maze(3,12).should == [3,6,12]    
  end

  it "should return [2,1] when going from 2 to 1" do
    solve_maze(2,1).should == [2,1]    
  end
  
end