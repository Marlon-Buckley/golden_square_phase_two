require 'todo_list'
require 'todo'


# add (is an instance of Todo)
  # Returns nothing

RSpec.describe "#add method" do
  it "takes an instance of todo and adds 1 or more todo items & their staus to the main list" do
    mainTest = TodoList.new
    mainTest.add(Todo.new("Do the cleaning").task)
    result = mainTest.add(Todo.new("Do the dishes").task)
    expect(result).to eq [["Do the cleaning", "incomplete"], ["Do the dishes", "incomplete"]]
  end
end



