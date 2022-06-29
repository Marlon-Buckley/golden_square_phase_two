class Todo
  def initialize(task) # task is a string
    @task = [task, "incomplete"]

    #example task = ["Do the the dished" "status/complete/incomplete"]
  end

  def task
    return @task
  end

  def mark_done!
    return @task[1] = "complete"
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
  end
end