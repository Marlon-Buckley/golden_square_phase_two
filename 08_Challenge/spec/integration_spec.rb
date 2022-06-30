require 'todo_list'
require 'todo'

#should we be checking @main_list?
RSpec.describe TodoList do
  context "by default" do
    it "#add - adds todo to main list of tasks" do
      mainTest = TodoList.new
      mainTest.add(Todo.new("Do the cleaning").task)
      result = mainTest.add(Todo.new("Do the dishes").task)
      expect(result).to eq [["Do the cleaning", "incomplete"], ["Do the dishes", "incomplete"]]
    end
  end


  context "#incomplete" do
    it "returns all incomplete tasks" do
      mainTest = TodoList.new
      mainTest.add(Todo.new("Do the cleaning").task)  
      mainTest.add(Todo.new("paint the fence").task)
      mainTest.add(Todo.new("cut the grass").task) 
      #is this correct, should we add on one line then mark done on a seperate line
      mainTest.add(Todo.new("Do the dishes").mark_done!)
      expect(mainTest.incomplete).to eq [["Do the cleaning", "incomplete"], ["paint the fence", "incomplete"], ["cut the grass", "incomplete"]]
    end
  end



  context "#complete" do
    it "returns all complete tasks" do
      mainTest = TodoList.new
      mainTest.add(Todo.new("Do the cleaning").task)  
      mainTest.add(Todo.new("paint the fence").task)
      mainTest.add(Todo.new("cut the grass").task) 
      #is this correct, should we add on one line then mark done on a seperate line
      mainTest.add(Todo.new("Do the dishes").mark_done!)
      expect(mainTest.complete).to eq [["Do the dishes", "complete"]]
    end
  end
end
      








