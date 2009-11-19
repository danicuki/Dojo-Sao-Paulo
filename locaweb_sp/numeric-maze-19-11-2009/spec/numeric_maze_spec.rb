require "lib/numeric_maze"

describe NumericMaze do
  it "o caminho de 2 para 4 deve ser [2,4]" do
    NumericMaze.new.solve(2,4).should == [2,4]
  end

  it "o caminho de 1 para 2 deve ser [1,2]" do
    NumericMaze.new.solve(1,2).should == [1,2]
  end

	it "o caminho de 1 para 4 deve ser [1,2,4]" do
	  NumericMaze.new.solve(1,4).should == [1,2,4]
	end

  it "o caminho de 1 para 3 deve ser [1,3]" do
    NumericMaze.new.solve(1,3).should == [1,3]
  end

  it "o caminho de 3 para 5 deve ser [3,5]" do
    NumericMaze.new.solve(3,5).should == [3,5]
  end

  it "o caminho de 3 para 7 deve ser [3,7]" do
    NumericMaze.new.solve(3,7).should == [3,5,7]
  end

  it "o caminho de 4 para 2 deve ser [4,2]" do
    NumericMaze.new.solve(4,2).should == [4,2]
  end

  it "o caminho de 4 para 2 deve ser [4,2]" do
    NumericMaze.new.solve(4,2).should == [4,2]
  end

  it "o caminho de 8 para 2 deve ser [8,4,2]" do
    NumericMaze.new.solve(8,2).should == [8,4,2]
  end

end