class Todo
  def initialize(task) # task is a string
    @task = [task, "incomplete"]
  end

  def task
    return @task
  end

  def mark_done!
    @task[1] = "complete"
    return @task
  end

  def done?
    if @task[1] == "complete"
      return true
    else
      return false
    end
  end
end