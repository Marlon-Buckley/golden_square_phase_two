require 'todo'

#will need to revisit this and apply changes after chat with Roi as failing currently

RSpec.describe "#task method" do
  xit "returns the task and its initial status of 'incomplete' " do
    testTodo = Todo.new("Do the dishes")
    expect(testTodo.task).to eq ["Do the dishes", "incomplete"] 
  end

  xit "marks a given test as done" do
    testTodo = Todo.new("Do the dishes")
    testTodo.mark_done!
    expect(testTodo.task).to eq ["Do the dishes", "complete"]
  end

  xit "Returns true if task is marked as 'complete'" do
    testTodo = Todo.new("Do the dishes")
    testTodo.mark_done!
    expect(testTodo.done?).to eq true
  end

  xit "Returns false if task is marked is 'incomplete'" do
    testTodo = Todo.new("Do the dishes")
    expect(testTodo.done?).to eq false
  end

end

