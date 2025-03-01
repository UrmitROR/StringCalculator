require 'rails_helper'

RSpec.describe StringCalculatorService do
  describe ".add" do
    it "returns 0 for an empty string" do
      expect(StringCalculatorService.add("")).to eq(0)
    end 

    it "returns the number itself for a single input" do
      expect(StringCalculatorService.add("1")).to eq(1)
    end

    it "returns the sum of two comma-separated numbers" do
      expect(StringCalculatorService.add("1,5")).to eq(6)
    end

    it "handles newlines as delimiters" do
      expect(StringCalculatorService.add("1\n2,3")).to eq(6)
    end

    it "supports custom delimiters" do
      expect(StringCalculatorService.add("//;\n1;2")).to eq(3)
    end

    it "supports custom delimiters along with newlines" do
      expect(StringCalculatorService.add("//;\n1;2")).to eq(3)
    end

    it "throws an exception for negative numbers" do
      expect { StringCalculatorService.add("//;\n-1;2\n-3") }.to raise_error("negative numbers not allowed -1, -3")
    end
  end
end
