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

  def mark_task_done!(task)
    @main_list.each do | todo |
      if todo == task
        todo.mark_done!
      end
    end
  end

  def return_status(todo_name)
    statuses = ""
    @main_list.each do | todo |
      if todo.name == todo_name
        statuses = todo.status
      end
    end
    return statuses
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
    completed_tasks = []
    @main_list.each do | todo |
      if todo.status == "complete" 
        completed_tasks << [todo]
      end
    end
    return completed_tasks              # Returns all complete todos
  end


  def give_up!
    @main_list.each do | todo |
      if todo.status == "incomplete"
        todo.mark_done!
      end
    end
  end
end