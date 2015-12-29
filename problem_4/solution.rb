class Solution
  def largest_palindrome_created(digit)
    largest_palindrome = -1
    power = 10 ** (digit - 1)
    lower_bound = 1 * power
    upper_bound = 10 * power - 1

    (lower_bound..upper_bound).each do |n|
      (lower_bound..upper_bound).each do |m|
        product = n * m
        largest_palindrome = product if palindrome?(product) && product > largest_palindrome
      end
    end

    largest_palindrome
  end

  def palindrome?(number)
    number.to_s == number.to_s.reverse
  end
end
