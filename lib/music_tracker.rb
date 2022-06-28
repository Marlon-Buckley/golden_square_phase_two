# As a user
# So that I can keep track of my music listening
# I want to add tracks I've listened to and see a list of them.



class MusicTracker
  def initialize
    @music_list = Array.new
  end

  def add(artist_song = nil)
    fail "You didn't provide a song/artist!" if artist_song == nil
    @music_list += [artist_song]
  end



end