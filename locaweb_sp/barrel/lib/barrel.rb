class String
	def first_letter
		self[0..0]
	end
	def last_letter
		self[-1..-1]
	end
end

class Barrel
	def initialize barrel
		@barrel = barrel
	end

	def playlist first_song, last_song
		return [first_song, last_song] if first_song.end_with?(last_song.first_letter)		
		result = [first_song]
		while !result.include?(last_song)
			next_song = song_starting_with(result.last.last_letter)
			raise Exception unless next_song
			result << next_song
		end

		result
	end

	def song_starting_with letter
		@barrel.select{ |song| song.start_with? letter }.first
	end
end