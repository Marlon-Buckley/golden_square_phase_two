require 'Diary'

RSpec.desribe Diary do
  context "initially" do
    it "starts with an empty diary" do
      my_diary = Diary.new
      expect(my_diary.all).to eq nil
    end
  end
end