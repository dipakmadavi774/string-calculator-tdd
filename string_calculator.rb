# string_calculator.rb
class StringCalculator
  def self.add(string_numbers)
    return 0 if string_numbers.empty?

    # For now, just handle a single number or empty string
    string_numbers.split(',').map(&:to_i).sum
  end
end

# Interactive prompt
puts "Enter numbers separated by comma (e.g., 1,2,3):"
input = gets.chomp
result = StringCalculator.add(input)
puts "output: #{result}"