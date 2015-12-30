class Solution
  def initialize
    @@prime = [2, 3]
  end

  def generate_prime(number)
    @@prime = [2, 3]

    test = @@prime.last
    while @@prime.length < number
      is_prime = true
      test += 2

      @@prime.each do |n|
        if test % n == 0
          is_prime = false
          break
        end
      end

      @@prime << test if is_prime
    end

    @@prime[number - 1]
  end
end
