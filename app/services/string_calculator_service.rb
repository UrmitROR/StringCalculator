class StringCalculatorService
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = /,|\n/  # Default delimiters: comma (`,`) or newline (`\n`)

    # Handle custom delimiter (e.g., "//;\n1;2")
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      delimiter = Regexp.escape(parts[0][2..])  # Extract the custom delimiter
      numbers = parts[1]
    end

    # Split numbers using the delimiter
    num_list = numbers.split(/#{delimiter}/).map(&:to_i)

    # Check for negatives
    negatives = num_list.select { |n| n < 0 }
    raise "negative numbers not allowed #{negatives.join(', ')}" if negatives.any?

    num_list.sum

  end
end
