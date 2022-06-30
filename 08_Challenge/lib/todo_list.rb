class TodoList

  def initialize
    @main_list = []
  end


  def add(todo)
    @main_list << todo
  end

  def incomplete
    incomplete_tasks = []
    @main_list.each do | task, status | 
      if status == "incomplete" 
        incomplete_tasks << [task, status]
      end
    end
    return incomplete_tasks
  end

  def complete
    # Returns all complete todos
  end

  def give_up!
    # Marks all todos as complete
  end
end



  [["Do the cleaning", "incomplete"], 
  ["paint the fence", "incomplete"], 
  ["cut the grass", "incomplete"], 
  ["Do the dishes", "complete"]]