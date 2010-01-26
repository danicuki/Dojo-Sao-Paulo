require 'split_cloud'

describe "Spliting the Cloud problem" do
  
	it "should put 1GB cloud in 1 server" do
	  s = SplitCloud.new(1)
		s.split([1]).should == [[1]]
	end
	
	it "should put 2GB cloud in 1 server" do
	  s = SplitCloud.new(1)
		s.split([2]).should == [[2]]
	end

	it "should put 2x2GB cloud in 1 server" do
	  s = SplitCloud.new(1)
		s.split([2, 2]).should == [[2, 2]]
	end

	it "should put 2x2GB cloud in 2 server" do
	  s = SplitCloud.new(2)
		s.split([2, 2]).should == [[2], [2]]
	end
	
	it "should put 2x3GB cloud in 2 server" do
	  s = SplitCloud.new(2)
		s.split([3, 3]).should == [[3], [3]]
	end
	
	it "should put 3x1GB cloud in 3 server" do
	  s = SplitCloud.new(3)
		s.split([1, 1, 1]).should == [[1], [1], [1]]
	end
	
	it "should put 3x2GB cloud in 3 server" do
	  s = SplitCloud.new(3)
		s.split([2, 2, 2]).should == [[2], [2], [2]]
	end
		
	it "should put [1,1,2] clouds in 2 servers" do
	  s = SplitCloud.new(2)
		s.split([1, 1, 2]).should == [[1, 1], [2]]
	end
	
	it "should put [1,1,2] clouds in 2 servers" do
	  s = SplitCloud.new(2)
		s.split([2, 1, 1]).should == [[1, 1], [2]]
	end
	
end