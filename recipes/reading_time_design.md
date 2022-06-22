# "reading_time" Method Design Recipe

## 1. Describe the Problem

 * As a user so that I can manage my time
 * I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.
 * Design the Method Signature


---

* count the words in the text argument 
* divide total word count by 200 (the given words per minute) ttps://martech.org/estimated-reading-times-increase-engagement/
* if time < than 1 return "less than 1 minute"
* elsif time == 1 return "About 1 minute"
* else return "About #{minutes} minutes"

This doesn't equate for hours, if I wanted to do this I'd need to change my method slightly, add in an eslif to check if time > 60 and then repeat the same logic that I did for minutes to return hours, then also include hours & minutes? idk I'm going to continue on. 


```ruby

def reading_time  
  return #time 
end

```

## 3. Create Examples as Tests

```ruby
# EXAMPLE

reading_time("this is a short bit of text") => #x seconds?

```

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

