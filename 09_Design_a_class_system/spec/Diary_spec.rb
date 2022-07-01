require 'Diary'

RSpec.describe Diary do
  context "initially" do
    it "Diary starts with an empty list of entries" do
      my_diary = Diary.new
      expect(my_diary.all).to eq []
    end
  end
end

