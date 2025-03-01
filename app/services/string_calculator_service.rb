class StringCalculatorService
  def self.add(numbers)
    delimiter = /,|\n/  # Default: Comma `,` and Newline `\n`

    # Handle custom delimiters
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)  # Split at the first newline
      custom_delimiter = Regexp.escape(parts[0][2..])  # Extract custom delimiter
      numbers = parts[1]  # Get actual numbers
      delimiter = /#{custom_delimiter}|\n/  # Allow both custom and `\n`
    end

    # Split using regex delimiter (supports multiple delimiters)
    num_list = numbers.split(delimiter).map(&:to_i)

    # Handle negative numbers
    negatives = num_list.select { |n| n < 0 }
    raise "negative numbers not allowed #{negatives.join(', ')}" if negatives.any?

    num_list.sum
  end
end
