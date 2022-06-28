# require 'diary_entry_old'

# RSpec.describe DiaryEntry do
#   it "returns title" do
#     diary_entry = DiaryEntry.new("a title", "some_contents")
#     expect(diary_entry.title).to eq "a title"
#   end

#   describe "#count_words" do
#     it "returns the num of words in contents" do
#       diary_entry = DiaryEntry.new("a title", "some contents blah blah")
#       expect(diary_entry.count_words).to eq 4
#     end

#   it "returns 0 when contents is empty" do
#       diary_entry = DiaryEntry.new("a title", "")
#       expect(diary_entry.count_words).to eq 0
#     end
#   end

#   describe "#reading_time" do
#     context "given 200 wpm" do
#       it "returns an int for int estimate of time it takes to read @contents" do
#         diary_entry = DiaryEntry.new("a title", "hello " * 550)
#         expect(diary_entry.reading_time(200)).to eq 3
#       end
#     end
#   end

#   context "given 0 wpm" do
#     it "fails" do
#       diary_entry = DiaryEntry.new("a title", "some string blah")
#       expect { diary_entry.reading_time(0) }.to raise_error "Reading speed must be > 0"
#     end
#   end

#   describe "#reading_chunk" do
#     context "text that is readable within the given mins " do
#       it "returns the entire contents" do
#         diary_entry = DiaryEntry.new("a title", "some important stuff")
#         result = diary_entry.reading_chunk(200, 1)
#         expect(result).to eq "some important stuff"
#       end
#     end

#     context "given 0 wpm" do
#       it "fails" do
#         diary_entry = DiaryEntry.new("a title", "some string blah")
#         expect { diary_entry.reading_chunk(0, 5) }.to raise_error "Reading speed must be > 0"
#       end
#     end
    

#     context "if contents isn't readable within given minutes" do
#       it "returns readable chunk" do
#         diary_entry = DiaryEntry.new("a title", "some important stuff")
#         result = diary_entry.reading_chunk(2, 1)
#         expect(result).to eq "some important"
#       end
#     end

#     it "returns the next chuck the next time chunk method called" do
#       diary_entry = DiaryEntry.new("a title", "some important stuff")
#       diary_entry.reading_chunk(2, 1)
#       result = diary_entry.reading_chunk(2, 1)
#       expect(result).to eq "stuff"
#     end

#     it "start again after reading all contents" do
#       diary_entry = DiaryEntry.new("a title", "some important stuff")
#       diary_entry.reading_chunk(2, 1)
#       diary_entry.reading_chunk(2, 1)
#       result = diary_entry.reading_chunk(2, 1)
#       expect(result).to eq "some important"
#     end

#     it "restarts if it finished right on the end" do
#       diary_entry = DiaryEntry.new("a title", "some important stuff")
#       diary_entry.reading_chunk(2, 1)
#       diary_entry.reading_chunk(1, 1)
#       result = diary_entry.reading_chunk(2, 1)
#       expect(result).to eq "some important"
#     end
#   end
# end