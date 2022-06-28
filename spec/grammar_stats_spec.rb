require 'grammar_stats'

RSpec.describe GrammarStats do
  context "#check method takes a string as text" do
    it "returns true if string starts with capital and ends with !, ., or ?" do
      grammar = GrammarStats.new
      expect(grammar.check("A string!")).to eq true
    end
  end

  it "returns the percentage as an int of texts that passed the check method" do
    grammar = GrammarStats.new
    grammar.check("A string!")
    grammar.check("another string") 
    expect(grammar.percentage_good).to eq 50
  end

  it "returns the percentage as an int of texts that passed the check method" do
    grammar = GrammarStats.new
    grammar.check("A string!")
    grammar.check("another string") 
    grammar.check("Another string!")
    grammar.check("Another string!")
    expect(grammar.percentage_good).to eq 75
  end

end


