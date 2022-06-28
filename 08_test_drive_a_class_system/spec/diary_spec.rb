require 'diary'

RSpec.describe do
  context "starts of with an empty list of entries" do
    it "when given no entry returns empty list" do
      diary = Diary.new
      expect(diary.all).to eq []
    end
  end
end
