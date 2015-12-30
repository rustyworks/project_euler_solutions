require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'solution'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

describe Solution do
  before do
    @solution = Solution.new
  end

  describe "#generate_prime" do
    it "return the prime in n-th" do
      assert_equal 2,      @solution.generate_prime(1)
      assert_equal 5,      @solution.generate_prime(3)
      assert_equal 13,     @solution.generate_prime(6)
      assert_equal 104743, @solution.generate_prime(10001)
    end
  end
end
