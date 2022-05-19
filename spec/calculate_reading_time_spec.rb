require "calculate_reading_time"

RSpec.describe "calculates an approximate reading time, in minutes, for a text, assuming a reading speed of 200 words per minute" do

  it "returns an approximate of 23 minutes for a 46000 word text" do
    result = calculate_reading_time(46000)
    expect(result).to eq "It will take you approximately 230 minutes to read this text."
  end

  it "returns an approximate reading time of 17 minutes for a 3400 word text" do
    result = calculate_reading_time(3400)
    expect(result).to eq "It will take you approximately 17 minutes to read this text."
  end

  it "returns an approximate reading time of 0 minutes if the user enters 0" do
    result = calculate_reading_time(0) 
    expect(result).to eq "It will take you approximately 0 minutes to read this text."
  end

  it "returns an approximate reading time of 13 minutes for a 2541 word text" do
    result = calculate_reading_time(2541)
    expect(result).to eq "It will take you approximately 13 minutes to read this text."
  end

  context "when user enters a negative number" do
    it "fails" do
      expect { calculate_reading_time(-653) }.to raise_error "Error: negative numbers not accepted"
    end
  end

  context "when parameter is nil" do
    it "fails" do
      expect { calculate_reading_time(nil) }.to raise_error "NilError: method does not accept Nil"
    end
  end

  context "word count is given as words instead of numbers" do
    it "fails" do
      expect { calculate_reading_time("five hundred and twenty three") }.to raise_error "Error: word count must be entered in numerical digits"
    end
  end
  
end
  

