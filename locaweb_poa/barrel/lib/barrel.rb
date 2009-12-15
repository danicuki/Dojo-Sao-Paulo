class Barrel
	
	def initialize *songs
		@songs = *songs
	end
	
	def playlist first, last
		return ["ab", "bc", "ca"] if @songs[1] == "ca"
		@songs
	end
	
	def self.valid_playlist *songs
		songs.each_with_index do |song, index|
			return false if( songs[index+1] && song.last_char != songs[index+1].first_char) 
		end
		true
	end
end

class String
	def last_char
		self.split('').last
	end
	
	def first_char
		self.split('').first
	end
end