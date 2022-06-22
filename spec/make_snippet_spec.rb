require 'make_snippet'

RSpec.describe "make_snippet method" do
  context "Given 5 words in a string" do
    it "returns those 5 words as a string" do
      result = make_snippet("Hello my name is Marlon")
      expect(result).to eq "Hello my name is Marlon"
    end
  end
  
  context "When given more than 5 words" do
    it "Returns words and ..." do
      result = make_snippet("Hello my name is Marlon what is your name?")
      expect(result).to eq "Hello my name is Marlon..."
    end
  end
  
  context "If given an empty string" do
    it "Return empty string" do
      result = make_snippet("")
      expect(result).to eq ""
    end
  end

end
