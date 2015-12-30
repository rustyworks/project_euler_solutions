require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'solution'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

describe Solution do
  before do
    @solution = Solution.new
  end

  describe "#sieve_of_eratosthenes" do
    it "generate the prime number until n" do
      assert_equal [2, 3, 5, 7, 11],     @solution.sieve_of_eratosthenes(12)
      assert_equal [2, 3, 5, 7, 11, 13], @solution.sieve_of_eratosthenes(13)
      assert_equal [2, 3, 5, 7],         @solution.sieve_of_eratosthenes(10)
    end
  end

  describe "#sum_all_primes" do
    it "sum all primes" do
      assert_equal 17,           @solution.sum_all_primes(10)
      assert_equal 10,           @solution.sum_all_primes(6)
      assert_equal 142913828922, @solution.sum_all_primes(2_000_000)
    end
  end
end
