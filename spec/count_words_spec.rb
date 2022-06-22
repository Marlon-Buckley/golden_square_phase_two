require 'count_words'

RSpec.describe "count_words method" do
  context "Takes a string as an argument" do
    it "returns the number of words in string" do
      result = count_words("Hello my name is Marlon")
      expect(result).to eq 5
    end
  end
end