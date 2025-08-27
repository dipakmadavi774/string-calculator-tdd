# spec/string_calculator_spec.rb
require_relative '../string_calculator'

RSpec.describe StringCalculator do
    it "returns 0 for empty string" do
        expect(StringCalculator.add("")).to eq(0)
        end

    it "returns the number itself when only one number" do
        expect(StringCalculator.add("1")).to eq(1)
    end

    it "returns the sum of two comma-separated numbers" do
        expect(StringCalculator.add("1,5")).to eq(6)
    end


end