{{PROBLEM}} Method Design Recipe

1. Describe the Problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

2. Design the Method Signature

Include the name of the method, its parameters, return value, and side effects.

# `calculate_reading_time` gives the approximate reading time for a test
reading_time = calculate_reading_time(word_count)

word_count = integer representing number of word in a text
reading_time = an integer representing minutes (e.g. 20)

returns "It will take you approximately #{reading_time} to read this text."


3. Create Examples as Tests

Make a list of examples of what the method will take and return.

calculate_reading_time(46000) = "It will take you approximately 230 minutes to read this text."
calculate_reading_time(3400) = "It will take you approximately 17 minutes to read this text."
calulate_reading_time(0) = "It will take you approximately 0 minutes to read this text."
calculate_reading_time(2541) = "It will take you approximately 13 minutes to read this text."
calculate_reading_time(-653) throws an error
calculate_reading_time(nil) throws an error
calculate_reading_time(five hundred and twenty three) throws an error


# EXAMPLE

extract_uppercase("hello WORLD") => ["WORLD"]
extract_uppercase("HELLO WORLD") => ["HELLO", "WORLD"]
extract_uppercase("hello world") => []
extract_uppercase("hello WoRLD") => []
extract_uppercase("hello WORLD!") => ["WORLD"]
extract_uppercase("") => []
extract_uppercase(nil) throws an error
Encode each example as a test. You can add to the above list as you go.

4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.