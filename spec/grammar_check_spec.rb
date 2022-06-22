require 'grammar_check'

RSpec.describe "grammar_check method" do
  context "Takes a string as an argument" do
    it "returns blank string if string empty" do
      expect{ grammar_check(1) }.to raise_error "error"
    end
  end

  context "Checks if string starts with capital letter and ends with correct punctation" do
    it "returns correct if so" do
      result = grammar_check("Hello my name is Marlon!")
      expect(result).to eq "correct"
    end
  end
end