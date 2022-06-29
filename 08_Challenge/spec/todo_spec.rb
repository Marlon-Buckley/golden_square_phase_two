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

  it "Returns true if task is marked as 'complete'" do
    testTodo = Todo.new("Do the dishes")
    testTodo.mark_done!
    expect(testTodo.done?).to eq true
  end

  it "Returns false if task is marked is 'incomplete'" do
    testTodo = Todo.new("Do the dishes")
    expect(testTodo.done?).to eq false
  end

end
# done? 
  # Returns true if the task is done
  # Otherwise, false


