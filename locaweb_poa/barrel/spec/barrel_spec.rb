require "barrel"

def assert_playlist playlist, first, last
	raise "Playlist invalida" unless playlist.first == first and playlist.last == last and Barrel.valid_playlist(playlist) 
end

describe "Testa as playlists do barrel of monkeys" do
  
	it "playlist de duas musicas em sequencia" do
	  b = Barrel.new(%w(ab ba))
		b.playlist("ab", "ba").should == ["ab", "ba"]
	end
	
	it "playlist de tres musicas em sequencia ordenadas" do
	  b = Barrel.new(%w(ab bc ca))
		assert_playlist(b.playlist("ab", "ca"), "ab", "ca")
	end

	it "playlist de tres musicas em sequencia desordenadas" do
	  b = Barrel.new(%w(ab ca bc)) 
		b.playlist("ab", "ca").should == ["ab", "bc", "ca"]
	end
	
	it "playlist valida com duas musicas" do
	  Barrel.valid_playlist("ab", "ba").should be_true
	end
	
	it "playlist valida com tres musicas" do
	  Barrel.valid_playlist("ab", "bc", "ca").should be_true
	end
	
	it "playlist invalida com duas musicas" do
	  Barrel.valid_playlist("ab", "ca").should be_false
	end

	it "playlist invalida com tres musicas" do
	  Barrel.valid_playlist("ab", "bd", "ba").should be_false
	end
end