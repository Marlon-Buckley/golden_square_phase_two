require 'diary'
require 'diary_entry'

RSpec.describe "intergration" do
  context "after adding mulitple diary entries" do
    it "returns a list of those entries" do
      diary = Diary.new
      diary_entry = DiaryEntry.new("A title", "Some contents")
      diary.add(diary_entry)
      expect(diary.all).to eq [diary_entry]
    end
  end
end
