class Todo
  def initialize(task_name) # task is a string
    @name = task_name
    @status = "incomplete"
  end

  def name  # returns a task as a string
    return @name.to_s
  end

  def status
    return @status
  end

  def mark_done!  # marks the todo as done, returns nothing
    @status = "complete"
  end

  def done?
    if @name[1] == "complete" #returns true if the task is complete, otherwise  false
      return true
    else
      return false
    end
  end
end