require 'Diary'
require 'DiaryEntry'
require 'todo_list'
require 'todo'

RSpec.describe "Adding entry to diary" do
  context "Given an entry as argument" do
    it "Adds entry to diary" do
      my_diary = Diary.new
      entry1 = DiaryEntry.new("Today I learned about multiclass systems!")
      my_diary.add(entry1)
      expect(my_diary.all).to eq [entry1]
    end
  end

  context "When more than 1 entry is stored in diary" do
    it "Returns all of the entries" do
      my_diary = Diary.new
      entry1 = DiaryEntry.new("Today I learned about multiclass systems!")
      entry2 = DiaryEntry.new("Today I built another thing!")
      my_diary.add(entry1)
      my_diary.add(entry2)
      expect(my_diary.all).to eq [entry1, entry2]
    end
  end

  #this isn't perfect, if I dont provide exact wpm/time values the return value is wrong.
  context "Given time user has to read & their reading speed" do
    it "Returns an entry that can be read within that time at given wpm" do
      my_diary = Diary.new
      entry1 = DiaryEntry.new("one")
      entry2 = DiaryEntry.new("one two")
      entry3 = DiaryEntry.new("three four five 07999761316")
      my_diary.add(entry1)
      my_diary.add(entry2)
      my_diary.add(entry3)
      expect(my_diary.sort_by_time_to_read(4, 1)).to eq entry3.contents
    end
  end

  context "Searches through each entry for mobile numbers" do
    it "Returns all mobile numbers that are found" do
      my_diary = Diary.new
      entry1 = DiaryEntry.new("one")
      entry2 = DiaryEntry.new("one two 07889761216")
      entry3 = DiaryEntry.new("long day today")
      entry4 = DiaryEntry.new("three four five 07889761219")
      entry5 = DiaryEntry.new("asdefasdfasdfa")
      my_diary.add(entry1)
      my_diary.add(entry2)
      my_diary.add(entry3)
      my_diary.add(entry4)
      my_diary.add(entry5)
      expect(my_diary.contacts).to eq ["07889761216", "07889761219"]
    end
  end
end
RSpec.describe "#todo_list" do
  context "Initially"
    it "Starts of with empty todo list" do
      testList = TodoList.new
      expect(testList.returns_list).to eq []
    end
  
  context "Given new task object as argument" do
    it "Adds tasks to the todo list" do
      testList = TodoList.new
      task1 = Todo.new("First task")
      task2 = Todo.new("Second task")
      task3 = Todo.new("Third task")
      testList.add(task1)
      testList.add(task2)
      testList.add(task3)
      expect(testList.returns_list).to eq [task1, task2, task3]
    end
  end
  
  context "When 1 or more tasks are complete" do
    it "Returns only completed tasks" do
      testList = TodoList.new
      task1 = Todo.new("First task")
      task2 = Todo.new("Second task")
      task3 = Todo.new("Third task")
      testList.add(task1)
      testList.add(task2)
      testList.add(task3)
      testList.mark_task_done!(task2)
      testList.mark_task_done!(task3)
      expect(testList.complete).to eq [[task2],[task3]]
    end
  end

  context "When 1 or more tasks incomplete" do
    it "marks all tasks as complete" do
      testList = TodoList.new
      task1 = Todo.new("First task")
      task2 = Todo.new("Second task")
      task3 = Todo.new("Third task")
      testList.add(task1)
      testList.add(task2)
      testList.add(task3)
      testList.give_up!
      expect(testList.complete).to eq [[task1], [task2], [task3]]
    end
  end

end

  


