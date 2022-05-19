require "check_grammar"

describe "check_grammar method" do 

  it "returns true for a sentence with a capital letter and a full stop" do
    result = check_grammar("I am walking.")
    expect(result).to eq true
  end

  it "returns false for a sentence that doesn't end with punctuation" do
   result = check_grammar("It's a lovely day. I am outside") 
   expect(result).to eq false
  end

  it "returns true with correct punctuation, including a comma inside the sentence" do
    result =  check_grammar("I walk to the shop, and I buy ice cream.") 
    expect(result).to eq true
  end

  it "returns true when there are 2 full stops" do
    result = check_grammar("It's a lovely day. I am outside.")
    expect(result).to eq true
  end

  it "returns true when the sentence ends in a question mark" do
     result =  check_grammar("What are you doing? What are you doing?")
      expect(result).to eq true
  end

  it "returns true when the sentence ends in an exclamation mark" do
    result = check_grammar("Hello there!") 
    expect(result).to eq true
  end

  it "returns false when the sentence doesn't begin with a capital letter" do
    result = check_grammar("i am walking.") 
    expect(result).to eq false
  end

  it "returns true for GO AWAY!" do
    result = check_grammar("GO AWAY!")
    expect(result).to eq true
  end

  it "returns false when there is no full stop at the end, although there is in the middle" do
    result = check_grammar("It's a lovely day. I am outside")
    expect(result).to eq false
  end

  it "returns false when there is no punctuation at the end" do
    result = check_grammar("I am walking")
    expect(result).to eq false
  end
end