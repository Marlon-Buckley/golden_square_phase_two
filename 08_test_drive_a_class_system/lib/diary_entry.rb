
# File: lib/diary_entry.rb
class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @words_read = 0
  end


  def title
    @title
  end

  def contents
    @contents 
  end

  def count_words
   return 0 if @contents.empty?
   return @contents.count(" ") + 1
  end

  def reading_time(wpm) 
    fail "WPM must be 1 or more" unless wpm.positive?
    return (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes)

  end
end