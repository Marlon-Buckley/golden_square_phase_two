require 'todo_list'
require 'todo'


RSpec.describe TodoList do
  context "by default" do
    it "#add - adds todo to main list of tasks" do
      mainTest = TodoList.new
      mainTest.add(Todo.new("Do the cleaning").task)
      result = mainTest.add(Todo.new("Do the dishes").task)
      expect(result).to eq [["Do the cleaning", "incomplete"], ["Do the dishes", "incomplete"]]
    end
  end
end



describe "#incomplete method" do
  it "" do
    mainTest = TodoList.new
    mainTest.add(Todo.new("Do the cleaning").task)
    result = mainTest.add(Todo.new("Do the dishes").task)
    expect(result).to eq [["Do the cleaning", "incomplete"], ["Do the dishes", "incomplete"]]
  end
end



