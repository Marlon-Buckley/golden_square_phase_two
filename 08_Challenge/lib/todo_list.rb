class TodoList

  def initialize
    @main_list = []
  end
  
  def returns_list
    return @main_list
  end

  def add(todo)
    @main_list << todo
  end

  def incomplete
    incomplete_tasks = []
    @main_list.each do | todo | 
      if todo.status == "incomplete" 
        incomplete_tasks << [todo]
      end
    end
    return incomplete_tasks
  end

  def complete
    complete_tasks = ["hello"]
    return complete_tasks                  # Returns all complete todos
  end

  def give_up!
    # Marks all todos as complete
  end
end



  [["Do the cleaning", "incomplete"], 
  ["paint the fence", "incomplete"], 
  ["cut the grass", "incomplete"], 
  ["Do the dishes", "complete"]]