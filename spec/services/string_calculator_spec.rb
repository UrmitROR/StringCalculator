require 'rails_helper'

RSpec.describe StringCalculatorService do
  describe ".add" do
    it "returns 0 for an empty string" do
      expect(StringCalculatorService.add("")).to eq(0)
    end 

    it "returns the number itself for a single input" do
      expect(StringCalculatorService.add("1")).to eq(1)
    end
  end
end
