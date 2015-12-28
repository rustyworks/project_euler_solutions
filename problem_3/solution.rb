class Solution
  def largest_prime_factor(number)
    prime_generator(2000)
    largest_factor = 0

    @prime_list.each do |n|
      largest_factor = n if number % n == 0
    end

    largest_factor
  end

  def prime_generator(prime_at)
    @prime_list = [2]
    next_check = 3

    while prime_at > 1 do
      prime = true

      @prime_list.each do |n|
        if next_check % n == 0
          prime = false
          break
        end
      end

      if prime
        @prime_list << next_check
        prime_at = prime_at.pred
      end

      next_check = next_check.succ
    end
    @prime_list.last
  end
end
