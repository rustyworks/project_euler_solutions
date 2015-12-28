require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'solution'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

describe Solution do
  before do
    @solution = Solution.new
  end

  describe "#largest_prime_factor" do
    it "return the largest factor from the number" do
      assert_equal 29,   @solution.largest_prime_factor(13195)
      assert_equal 6857, @solution.largest_prime_factor(600851475143)
    end
  end

  describe "#prime_generator" do
    it "return the n-th prime" do
      assert_equal 2,  @solution.prime_generator(1)
      assert_equal 3,  @solution.prime_generator(2)
      assert_equal 5,  @solution.prime_generator(3)
      assert_equal 7,  @solution.prime_generator(4)
      assert_equal 11, @solution.prime_generator(5)
    end
  end
end
