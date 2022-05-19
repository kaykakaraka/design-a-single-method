def check_grammar(text)
  acceptable_end = [".","!","?"]
  punctuation, capital = false, false
  acceptable_end.each { |sign| punctuation = true if text[-1] == sign }
  capital = true if text[0] == text[0].upcase
  punctuation && capital
end



# text[-1] == "." || text[-1] == "?" ? true : false

# .inital checks first character
# .last returns last character 