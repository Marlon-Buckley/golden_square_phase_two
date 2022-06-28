require 'diary'
require 'diary_entry'

RSpec.describe "intergration" do
  context "after adding mulitple diary entries" do
    it "returns a list of those entries" do
      diary = Diary.new
      diary_entry = DiaryEntry.new("Another title", "Some other contents")
      diary_entry = DiaryEntry.new("A title", "Some contents")
      diary.add(diary_entry)
      expect(diary.all).to eq [diary_entry]
    end
  end

  describe "#count_words" do
    it "counts the total words in all the diary entries" do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new("Another title", "Some other contents")
      diary_entry2 = DiaryEntry.new("A title", "Some contents")
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.count_words).to eq 5
    end
  end

  describe "reading time behaviour" do
    # Also
    it "calulates the reading time for all the entries" do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new("Another title", "Some other contents")
      diary_entry2 = DiaryEntry.new("A title 2", "Some contents 2")
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.reading_time(2)).to eq 3
    end
  end


end
