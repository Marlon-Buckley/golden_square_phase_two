require 'task_class'

RSpec.describe "task_class" do
  context "Given a task" do
    it "Stores task in @task_list" do
      tracker = Tasks.new
      tracker.add("First task.")
      tracker.add("Second task.")
      result = tracker.add("Third task.")
      expect(result).to eq ["First task.", "Second task.", "Third task."]
    end
  end

  context "user can delete tasks once complete" do
    it "removes a given tasks" do
      tracker = Tasks.new
      tracker.add("First task.")
      tracker.add("Second task.")
      tracker.add("Third task.")
      result = tracker.remove("Third task.")
      expect(result).to eq ["First task.", "Second task."]
    end
  end

end
