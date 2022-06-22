require 'reading_time'

RSpec.describe "reading_time method" do
  context "If text time is less than 1 minute" do
    it "returns less than 1 miute" do
      result = reading_time("Hello my name is Marlon")
      expect(result).to eq ("Less than 1 minute")
    end
  end

  context "If time is equal to 1 minute" do
    it "returns about 1 minute" do
      text_to_input = "Hello " * 210
      result = reading_time(text_to_input)
      expect(result).to eq ("About 1 minute")
    end
  end

  context "If time > 1" do
    it "returns about 'time' minutes" do
      text_to_input = "Hello " * 1000
      result = reading_time(text_to_input)
      expect(result).to eq ("About 5 minutes")
    end
  end

end