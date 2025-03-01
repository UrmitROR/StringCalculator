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
    numbers.split(/#{delimiter}/).map(&:to_i).sum

  end
end
