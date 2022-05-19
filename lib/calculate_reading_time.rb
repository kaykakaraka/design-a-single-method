def calculate_reading_time(word_count)
  fail "Error: negative numbers not accepted" if word_count.to_s[0] == "-"
  fail "NilError: method does not accept Nil" if word_count == nil
  fail "Error: word count must be entered in numerical digits" if word_count.is_a? String
  reading_time = (word_count.to_f / 200).round
  "It will take you approximately #{reading_time} minutes to read this text."
end

