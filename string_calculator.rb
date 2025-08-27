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
        # Split into delimiter part and the rest of the numbers
        string_numbers = string_numbers.gsub('\\n', "\n")
        parts = string_numbers[2..].split("\n", 2)
        delimiter = parts[0]                # e.g., ";"
        string_numbers = parts[1] || ""     # numbers string
        # Split using the delimiter
        numbers_array = string_numbers.split(Regexp.new(Regexp.escape(delimiter))).map(&:to_i)
    else
      # Split by comma or newline
      string_numbers = string_numbers.gsub('\\n', "\n")
      numbers_array = string_numbers.split(/,|\n/).map(&:to_i)
    end
   
  # Check for negative numbers
    negatives = numbers_array.select { |n| n < 0 }
    unless negatives.empty?
      raise "negative numbers not allowed #{negatives.join(',')}"
    end
      numbers_array.sum
  end
end

# Interactive prompt
puts "Enter numbers separated by comma (e.g., 1,2,3):"
input = gets.chomp
result = StringCalculator.add(input)
puts "output: #{result}"