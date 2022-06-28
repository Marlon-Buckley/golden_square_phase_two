require 'diary_entry'

RSpec.describe DiaryEntry do
  it "creates an entry" do
    diary_entry = DiaryEntry.new("A title", "Some contents")
    expect(diary_entry.title).to eq "A title"
    expect(diary_entry.contents).to eq "Some contents"
  end

  describe "#count_words" do
    it "counts words in entry and returns total" do
      diary_entry = DiaryEntry.new("A title", "Lots and lots of contents")
      expect(diary_entry.count_words).to eq 5
    end

    it "returns zero if contents is empty" do
      diary_entry = DiaryEntry.new("A title", "")
      expect(diary_entry.count_words).to eq 0
    end
  end

  it "creates an entry" do
    diary_entry = DiaryEntry.new("A title", "Some contents")
    expect(diary_entry.title).to eq "A title"
    expect(diary_entry.contents).to eq "Some contents"
  end

  describe "#reading_time" do
    it "fails if wpm is zero" do
      diary_entry = DiaryEntry.new("a title", "some contents")
      expect { diary_entry.reading_time(0) }.to raise_error "WPM must be 1 or more"
    end

    it "returns zeo if contents empty" do
      diary_entry = DiaryEntry.new("A title", "")
      expect(diary_entry.reading_time(2)).to eq 0
    end

    it "returns one if contents is single word" do
      diary_entry = DiaryEntry.new("A title", "content")
      expect(diary_entry.reading_time(2)).to eq 1
    end

    it "returns reading time for the contents" do
      diary_entry = DiaryEntry.new("A title", "some sort of big stuff")
      expect(diary_entry.reading_time(2)).to eq 3
    end
  end
end
