{{PROBLEM}} Method Design Recipe

1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

2. Design the Method Signature

includes = includes_todo?(text)

includes_todo : method
includes : true or false
text : a string e.g. "#TODO make dinner"

3. Create Examples as Tests

Make a list of examples of what the method will take and return.

includes_todo?("#TODO make dinner") => true
includes_todo?("Yesterday was a lovely day.") => false
includes_todo?("Kay's #TODO is quite long.") => true
includes_todo?("Open the window #TODO") => true
includes_todo?("TODO make dinner") => false
includes_todo?("# make dinner today") => false
includes_todo?("Is there much on your todo list?") => false
includes_todo?("#TODO #TODO #TODO") => true
includes_todo?("#TO DO walk outside with the dog") => false
includes_todo?("#todo walk the dog") => false
includes_todo?("") => false
includes_todo?(45) throws error
includes_todo?(nil) throws error
includes_todo?(true) throws error

4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.