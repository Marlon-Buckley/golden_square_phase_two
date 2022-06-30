class TodoList

  def initialize
    @main_list = []
  end


  def add(todo)
    @main_list << todo
  end

  def incomplete
   return @main_list
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