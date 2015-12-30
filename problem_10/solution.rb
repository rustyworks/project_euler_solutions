class Solution
  def sieve_of_eratosthenes(limit)
    prime = (0..limit).to_a
    prime[0] = prime[1] = nil

    prime.each do |n|
      next unless n
      break if n * n > limit
      (n * n).step(limit, n) do |m|
        prime[m] = nil
      end
    end

    prime.compact
  end

  def sum_all_primes(limit)
    sieve_of_eratosthenes(limit).reduce(&:+)
  end
end
