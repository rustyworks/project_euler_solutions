class Solution
  def sum_and_power(number)
    (1..number).reduce(&:+) ** 2
  end

  def power_each_number_and_sum(number)
    (1..number).map do |n|
      n ** 2
    end.reduce(&:+)
  end

  def difference(number)
    result = sum_and_power(number) - power_each_number_and_sum(number)
    result.abs
  end
end
