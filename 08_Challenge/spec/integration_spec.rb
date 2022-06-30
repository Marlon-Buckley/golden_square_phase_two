require 'todo_list'
require 'todo'

#should we be checking @main_list?
RSpec.describe TodoList do
  context "by default" do
    it "#add - adds todo to main list of tasks" do
      mainTest = TodoList.new
      task1 = (Todo.new("Do the cleaning"))
      task2 = (Todo.new("Do the dishes"))
      mainTest.add(task1)
      mainTest.add(task2)
      expect(mainTest.returns_list).to eq [["Do the cleaning", "incomplete"], ["Do the dishes", "incomplete"]]
    end
  end

  context "#incomplete" do
    xit "returns all incomplete tasks" do
      mainTest = TodoList.new
      task3 = (Todo.new("cut the grass")) 
    #is this correct, should we add on one line then mark done on a seperate line
      task4 = (Todo.new("Do the dishes"))
      mainTest.add(task3)
      mainTest.add(task4)
      task4.mark_done!
      expect(mainTest.incomplete).to eq [["cut the grass", "incomplete"]]
    end
  end

  



  context "#complete" do
    xit "returns all complete tasks" do
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
      expect(mainTest.complete).to eq [["Do the dishes", "complete"]]
    end
  end










end
      








