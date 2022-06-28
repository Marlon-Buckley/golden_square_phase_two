class GrammarStats
  def initialize
    @punctuation = ["!", "?", "."]
    @texts_checked = 0.0
    @texts_passed = 0.0
  end

  def check(text)
    @texts_checked += 1
    if text[0].upcase && @punctuation.any? { |punctuation| text[-1].include? punctuation}
      @texts_passed += 1
      return true
    else
      return false
    end
  end

  def percentage_good
    return @texts_passed / @texts_checked * 100

  end
end