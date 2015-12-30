class Solution
  def calculate_multiplication_series(sequence_string, n)
    largest_multiplication = -1

    (sequence_string.length - n).times do |index|
      multiplication_result = 1

      n.times do |offset|
        multiplication_result *= sequence_string[index + offset].to_i
      end

      largest_multiplication = multiplication_result if multiplication_result > largest_multiplication
    end

    largest_multiplication
  end

  def parse(raw_string)
    raw_string.split.join('')
  end
end
