def make_snippet(string)
  words = string.split(" ")
  if(words.length > 5 )
    return words.first(5).join(" ") + "..."
  elsif(words.length <= 5)
    return words.join(" ")
  else
    return words
  end
end