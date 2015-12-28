require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'solution'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

describe "#sum_even_value_fibonacci_series_before" do
  before do
    @solution = Solution.new
  end

  describe "when given positive integer" do
    it "return the sum of even fibonacci generated before the argument" do
      assert_equal 10, @solution.sum_even_value_fibonacci_series_before(10)
      assert_equal 4613732, @solution.sum_even_value_fibonacci_series_before(4000000)
    end
  end
end

describe "#generate_fibonacci" do
  before do
    @solution = Solution.new
  end

  describe "given positive value" do
    it "return the value of the n-th fibonacci" do
      assert_equal 1, @solution.generate_fibonacci(1)
      assert_equal 2, @solution.generate_fibonacci(2)
      assert_equal 3, @solution.generate_fibonacci(3)
      assert_equal 5, @solution.generate_fibonacci(4)
      assert_equal 8, @solution.generate_fibonacci(5)
    end
  end
end
