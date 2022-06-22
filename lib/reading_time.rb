

# - count the words in the text argument
# - divide total word count by 200 (the given words per minute)
# - https://martech.org/estimated-reading-times-increase-engagement/

def reading_time(text)
  words_per_minute = 200
  words = text.split.size
  minutes = words / words_per_minute.floor
  if(minutes < 1)
    return "Less than 1 minute"
  elsif(minutes == 1)
    return "About 1 minute"
  else 
    return "About #{minutes} minutes"
  end
end