def includes_todo?(text)
  #fail "Error: integer not accepted. Only string accepted" if text.is_a? Integer
  #fail "NilError: nil not accepted. Only string accepted" if text == nil
  #fail "Error: boolean value not accepted. Only string accepted" if text == false || text == true
  fail "Error: only string accepted" if !text.is_a? String
  text.include?("#TODO")
end