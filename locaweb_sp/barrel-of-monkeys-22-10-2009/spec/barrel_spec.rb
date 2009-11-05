require 'lib/barrel.rb'

describe Barrel do
  
  context "Nao preciso da lista de musicas para montar a playlist" do
    it "does something" do
      
    end
    it "does something" do
      
    end
  end
  
  context "agora vou precisar da lista de musicas" do 
    it "does something" do
      
    end
  end
  
  it "should return two songs when given two songs" do
    b = Barrel.new "ab", "bc"
    b.playlist("ab", "bc").should == ["ab", "bc"]
  end
  
  it "should return three songs with starting song at beginning" do
    b = Barrel.new "ab", "bc", "cd"
    b.playlist("ab", "cd").should == ["ab", "bc", "cd"]
  end
  
  it "should have start_song inside the songs" do
    b = Barrel.new "ab", "cd", "bc"
    b.playlist("ae", "cd").should == "ArgumentError"
  end
  
  it "should have end_song inside the songs" do
    b = Barrel.new "ab", "cd", "bc"
    b.playlist("ab", "cf").should == "ArgumentError"
  end
  
  it "should return three songs with starting song at beginning with shuffled" do
    b = Barrel.new "ab", "cd", "bc"
    b.playlist("ab", "cd").should == ["ab", "bc", "cd"]
  end

  it "should return the first letter of the song given the index of the song in the list" do
    b = Barrel.new "ab", "cd", "bc"
    b.first_letter_of_song_in(1).should == "c"
  end

  it "should return the last letter of the song given the index of the song in the list" do
    b = Barrel.new "ab", "cd", "bc"
    b.last_letter_of_song_in(1).should == "d"
  end
  
  it "should exclude songs not matching with patern" do
    b = Barrel.new "ab", "xy", "bc"
    b.playlist("ab", "bc").should == ["ab", "bc"]
  end  
end