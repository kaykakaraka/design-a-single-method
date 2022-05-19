{{PROBLEM}} Method Design Recipe

1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

2. Design the Method Signature

checked = check_grammar(text)

check_grammar is the method
text: a string e.g. "I am walking."
checked = true or false

# The method doesn't print anything or have any other side-effects

3. Create Examples as Tests

Make a list of examples of what the method will take and return.

# EXAMPLE

check_grammar("I am walking.") => true
check_grammar("I walk to the shop, and I buy ice cream.") => true
check_grammar("It's a lovely day. I am outside.") => true
check_grammar("What are you doing?" What are you doing?") => true
check_grammar("Hello there!") => true
check_grammar("i am walking.") => false

check_grammar("GO AWAY!") => true
check_grammar("It's a lovely day. I am outside") => false
check_grammar("I am walking") => false
check_grammar("i am walking") => false

Encode each example as a test. You can add to the above list as you go.

4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.