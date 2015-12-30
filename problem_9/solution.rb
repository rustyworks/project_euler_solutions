class Solution
  def check_pythagorean_product(sum_of_triplet)
    bound = 1000
    flag = true
    a = b = c = 1
    while flag
      if c > b && b > a
        if a ** 2 + b ** 2 == c ** 2 && a + b + c == sum_of_triplet
          return a * b * c
        end
      end
      if a == bound
        a = 1
        b += 1
      elsif b == bound
        b = 1
        c += 1
      elsif c == bound
        flag = false
      end
      a += 1
    end
  end
end
