class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @words_read = 0
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    return @contents.split.size
  end

  def reading_time(wpm)
    fail "Reading speed must be > 0" unless wpm.positive?
    return (count_words / wpm.to_f).ceil
    
    
    
    # wpm is an integer representing the number of words the
                        # user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
  end

  def reading_chunk(wpm, minutes)
    fail "Reading speed must be > 0" unless wpm.positive?
    readable_words = wpm * minutes
    start_from = @words_read
    end_at = @words_read + readable_words
    word_list = words[start_from, end_at]
    if end_at >= count_words
      @words_read = 0
    else 
      @words_read = end_at
    end

    return word_list.join(" ")
  end

  private

  def words
    @contents.split(" ")
  end

end

 # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.