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
    it "fails where wpm is 0" do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new("Another title", "Some other contents")
      diary.add(diary_entry1)
      expect { diary.reading_time(0) }.to raise_error("WPM must be 1 or more")
    end


    it "calulates the reading time for all the entries if fits exactly" do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new("Another title", "Some other contents")
      diary_entry2 = DiaryEntry.new("A title 2", "Some contents 2")
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.reading_time(2)).to eq 3
    end

    it "calulates the reading time for all the entries if falls over a minute" do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new("Another title", "Some other")
      diary_entry2 = DiaryEntry.new("A title 2", "Some contents 2")
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.reading_time(2)).to eq 3
    end
  end

# Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.

  describe "best reading time entry behaviour" do
    it "fails where wpm is 0" do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new("Another title", "Some other content")
      diary.add(diary_entry1)
      expect { diary.find_best_entry_for_reading_time(0, 1) }.to raise_error("WPM must be 1 or more")
    end

    context "where we just have entry and it is readable in time" do
      it "returns the entry" do
        diary = Diary.new
        diary_entry1 = DiaryEntry.new("Another title", "Some other")
        diary.add(diary_entry1)
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq diary_entry1
      end
    end

    context "where we have one entry and it is not readable in the time" do
      it "returns nill" do
        diary = Diary.new
        diary_entry1 = DiaryEntry.new("Another title", "Some other content")
        diary.add(diary_entry1)
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq nil
      end
    end

    context "where we have more than one entry" do
      it "returns longest entry the user could read in given time" do
        diary = Diary.new
        best_entry = DiaryEntry.new("Another title", "something something")
        diary.add(best_entry)
        diary.add(DiaryEntry.new("Another title", "something"))
        diary.add(DiaryEntry.new("Another title", "something something something"))
        diary.add(DiaryEntry.new("Another title", "something something something something"))
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq best_entry
      end
    end
  end


end
