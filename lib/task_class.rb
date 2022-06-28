#User can add tasks and see them in a list
#User can mark task as complete in turn removing them from list


class Tasks

  def initialize
    @task_list = Array.new
  end

  def add(task)
    @task_list += [task]
  end

  def remove(task)
    @task_list -= [task]
  end

end