class Barrel
  
  def initialize(*songs)
    @songs = songs
  end
  
  def playlist(start_song, end_song)    
    if  !@songs.include? start_song or !@songs.include? end_song
      return "ArgumentError"
    end
    @songs.sort
  end
  
  def first_letter_of_song_in(index)
    @songs[index][0].chr
  end
  
  def last_letter_of_song_in(index)
    @songs[index][-1].chr
  end
  
end
