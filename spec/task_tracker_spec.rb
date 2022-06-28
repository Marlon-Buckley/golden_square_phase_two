require 'task_tracker'

RSpec.describe "task_tracker method" do
  context "Takes a task as an argument" do
    it "if arg provided is an int throws up an error" do
      expect { task_tracker(1) }.to raise_error "error"
    end

    it "if arg is missing throw up error" do
      expect { task_tracker() }.to raise_error "error"
    end

    it "if arg an empty string throw up error" do
      expect { task_tracker("") }.to raise_error "error"
    end

    it "if arg a float throw up error" do
      expect { task_tracker(1.0) }.to raise_error "error"
    end

    it "if arg contains #TODO return true" do
      expect(task_tracker("#TODO, 12345")).to eq true
    end

    it "if arg contains lowercase #todo return true" do
      expect(task_tracker("#todo, 12345")).to eq true
    end

    it "if arg is missing a #TODO return false" do
      expect(task_tracker("this is a string")).to eq false
    end

  end
end

def say_hello(name)
  return "hello #name}"
end