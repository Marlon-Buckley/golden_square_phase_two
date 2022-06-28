require 'music_tracker'

RSpec.describe MusicTracker do
  context "User can add music to list that they have listened to" do
    it "list is updated with music provided" do
      music_tracker = MusicTracker.new
      expect(music_tracker.add("Darude - Sandstorm")).to eq ["Darude - Sandstorm"]
    end
  end

  it "stores mulitple songs within the list" do
    music_tracker = MusicTracker.new
    music_tracker.add("Darude - Sandstorm")
    music_tracker.add("Darude - Sandstorm")
    result = music_tracker.add("Darude - Sandstorm")
    expect(result).to eq ["Darude - Sandstorm", "Darude - Sandstorm", "Darude - Sandstorm"]
  end

  it "raises an error if no song/artist proivded" do
    music_tracker = MusicTracker.new
    expect { music_tracker.add() }.to raise_error "You didn't provide a song/artist!"
  end

end
