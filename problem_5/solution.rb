class Solution
  def largest_divisable_number(upperbound)
    return 1 if upperbound <= 1
    (upperbound..1000_000_000).step(upperbound).each do |n|
      flag = true
      (upperbound - 1).downto(2).each do |divisor|
        if n % divisor != 0
          flag = false
          break
        end
      end
      return n if flag
    end
  end
end
