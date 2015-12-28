class Solution
  def sum_of_multiple_3_and_5_before(limit)
    sum = 0
    (1..limit - 1).each do |n|
      sum += n if n % 3 == 0 || n % 5 == 0
    end
    sum
  end
end
