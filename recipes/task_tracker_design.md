# "reading_time" Method Design Recipe

## 1. Describe the Problem

 * As a user, so that I can keep track of my tasks, I want to check if a text includes the string #TODO


---


```ruby

def task_tracker(task)  
  return #true if the string is included in task
end

```

## 3. Create Examples as Tests

```ruby
# EXAMPLE

task_tracker(1) or (1.0) ("") => #returns fail statement 
task_tracker("this is a short bit of text") => #returns false
task_tracker("#TODO something") => #returns true
task_tracker("#todo") => #returns true



```

## 4. Implement the Behaviour

