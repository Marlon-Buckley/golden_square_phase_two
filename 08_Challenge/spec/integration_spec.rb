require 'todo_list'
require 'todo'

#should we be checking @main_list?
RSpec.describe TodoList do
  context "by default" do
    it "#add - adds todo to main list of tasks" do
      mainTest = TodoList.new
      task1 = Todo.new("Do the cleaning")
      task2 = Todo.new("Do the dishes")
      mainTest.add(task1)
      expect(mainTest.returns_list).to eq [task1]
    end
  end

  context "#incomplete" do
    it "returns all incomplete tasks" do
      mainTest = TodoList.new
      task3 = (Todo.new("cut the grass")) 
    #is this correct, should we add on one line then mark done on a seperate line
      task4 = (Todo.new("Do the dishes"))
      task5 = (Todo.new("Pay rent dollar billz"))
      mainTest.add(task3)
      mainTest.add(task4)
      mainTest.add(task5)
      task4.mark_done!
      task3.mark_done!
      result = mainTest.incomplete
      expect(result).to eq [[task5]]
    end
  end

  context "#complete" do
    it "returns all complete tasks" do
      mainTest = TodoList.new
      
      task1 = (Todo.new("Do the cleaning"))  
      task2 = (Todo.new("paint the fence"))
      task3 = (Todo.new("cut the grass")) 
    #is this correct, should we add on one line then mark done on a seperate line
      task4 = (Todo.new("Do the dishes"))
      mainTest.add(task1)
      mainTest.add(task2)
      mainTest.add(task3)
      mainTest.add(task4)
      task4.mark_done!
      task3.mark_done!
      expect(mainTest.complete).to eq [[task3], [task4]]
    end
  end

  context "#return_status" do
    it "returns status of given task name" do
      mainTest = TodoList.new
      task1 = (Todo.new("Do the cleaning"))  
      task2 = (Todo.new("paint the fence"))
      task3 = (Todo.new("cut the grass")) 
      task4 = (Todo.new("Do the dishes"))
      mainTest.add(task1)
      mainTest.add(task2)
      mainTest.add(task3)
      mainTest.add(task4)
      task4.mark_done!
      task3.mark_done!
      result = mainTest.return_status("Do the dishes")
      expect(result).to eq task4.status
    end
  end
end
      








