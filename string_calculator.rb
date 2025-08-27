# string_calculator.rb
class StringCalculator
  def self.add(string_numbers)
    return 0 if string_numbers.empty?

    # Return the number itself if the input is a single number (only digits)
    if string_numbers.match?(/\A\d+\z/)
      return string_numbers.to_i
    end

   # Check for custom delimiter
    if string_numbers.start_with?("//")
      delimiter, string_numbers = string_numbers[2..].split("\n", 2)
      numbers_array = string_numbers.split(delimiter).map(&:to_i)
    else
      # Split by comma or newline
      numbers_array = string_numbers.split(/,|\n/).map(&:to_i)
    end
   

      numbers_array.sum
  end
end

# Interactive prompt
puts "Enter numbers separated by comma (e.g., 1,2,3):"
input = gets.chomp
result = StringCalculator.add(input)
puts "output: #{result}"