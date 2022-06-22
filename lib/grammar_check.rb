def grammar_check(string = nil)
  punctation = ['!', '?', '.']

  fail "error" if string.nil? || string.is_a?(Integer) || string.is_a?(Float) || string.empty?

  if string[0] == string[0].upcase && punctation.any? { |chars| string[-1].include? chars }
    return "correct"

  else
    return "something else"
  end

end
