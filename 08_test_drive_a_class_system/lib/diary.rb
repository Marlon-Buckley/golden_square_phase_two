class Diary
  def initialize
    @entries = Array.new
  end

  def add(entry) # entry is an instance of DiaryEntry
   @entries << entry
  end

  def all
    @entries 
  end

  def count_words
    return @entries.sum(&:count_words)
  end

  def reading_time(wpm)
    fail "WPM must be 1 or more" unless wpm.positive?
    return (count_words / wpm.to_f).ceil
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    readable_entries(wpm, minutes).max_by do |entry| 
      entry.count_words
    end
  end

  private

  def readable_entries(wpm, minutes)
    @entries.filter do |entry|
      entry.reading_time(wpm) <= minutes
    end
  end

end