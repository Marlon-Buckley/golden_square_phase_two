# Check that task method returns given task?
require 'todo'


RSpec.describe "#task method" do
  it "returns the task and its initial status of 'incomplete' " do
    testTodo = Todo.new("Do the dishes")
    expect(testTodo.task).to eq ["Do the dishes", "incomplete"] 
  end

  it "marks a given test as done" do
    testTodo = Todo.new("Do the dishes")
    testTodo.mark_done!
    expect(testTodo.task).to eq ["Do the dishes", "complete"]
  end

end
# done? 
  # Returns true if the task is done
  # Otherwise, false


