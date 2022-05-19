require "includes_todo"

RSpec.describe "method to check if a string contains #TODO" do

  it "returns true for a string that starts with #TODO" do
    result = includes_todo?("#TODO make dinner")
    expect(result).to eq true
  end

  it "returns false for a string that does not include #TODO" do
    result = includes_todo?("Yesterday was a lovely day.") 
    expect(result).to eq false
  end

  it "returns true for a string with #TODO in the middle" do
    result = includes_todo?("Kay's #TODO is quite long") 
    expect(result).to eq true
  end

  it "returns true for a string with #TODO at the end" do
    result = includes_todo?("Open the window #TODO") 
    expect(result).to eq true
  end

  it "returns false for a string including TODO" do
    result = includes_todo?("TODO make dinner") 
    expect(result).to eq false
  end

  it "returns false for a string including #" do
    result = includes_todo?("# make dinner today")
    expect(result).to eq false
  end

  it "returns false for a string including todo" do
    result = includes_todo?("Is there much on your todo list?") 
    expect(result).to eq false
  end

  it "returns true for multiple cases of #TODO" do
    result = includes_todo?("#TODO #TODO #TODO") 
    expect(result).to eq true
  end

  it "returns false for #TO DO" do
    result = includes_todo?("#TO DO walk outside with the dog") 
    expect(result).to eq false
  end
   
  it "returns false for #todo" do
    result = includes_todo?("#todo walk the dog") 
    expect(result).to eq false
  end

  it "returns false for empty string" do
    result = includes_todo?("") 
    expect(result).to eq false
  end

  context "when argument passed is an integer" do
    it "fails" do
      expect { includes_todo?(45) }.to raise_error "Error: only string accepted"
    end
  end

  context "when argument passed is nil" do
    it "fails" do
      expect { includes_todo?(nil) }.to raise_error "Error: only string accepted"
    end
  end

  context "when argument is true or false" do
    it "fails" do
      expect { includes_todo?(true) }.to raise_error "Error: only string accepted"
    end
  end

  context "when argument is not a string" do
    it "fails" do
      expect { includes_todo?([2,4]) }.to raise_error "Error: only string accepted"
    end
  end

end