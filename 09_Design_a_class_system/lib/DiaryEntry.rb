class DiaryEntry

  def initialize(entry)
    @total_words = entry.split.size
    @contents = entry
  end
  
  def contents
    return @contents
  end

  def total_words
    return @total_words
  end

end