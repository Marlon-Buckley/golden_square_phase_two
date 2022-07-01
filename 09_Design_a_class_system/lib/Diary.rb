class Diary

  def initialize
    @diary_entries = Array.new
    @contact_numbers = Array.new
  end

  def add(entry) #adds instance of DiaryEntry class to @diary_entries
    @diary_entries << entry
  end

  def all
    return @diary_entries
  end


  def sort_by_time_to_read(wpm, time) 
    #this doesn't work as I want it to, only works with exact matches for wpm/time 
    words_readable = wpm * time
    @diary_entries.each do |entry|
      if entry.total_words == words_readable
        return entry.contents
      end
    end
  end

  def contacts 
    #loops through each object in @diary_entries and adds any phone nums to @contact_numbers
    @diary_entries.each do |entry|
      if entry.contents.match(/[0-9]{11}/)
        @contact_numbers << entry.contents.match(/[0-9]{11}/).to_s
      end
    end
    return @contact_numbers
  end
end