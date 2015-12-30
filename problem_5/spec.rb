require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'solution'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

describe Solution do
  before do
    @solution = Solution.new
  end

  describe "#largest_divisable_number" do
    it "return the largest divisable number from 1 to n" do
      assert_equal 2,         @solution.largest_divisable_number(2)
      assert_equal 6,         @solution.largest_divisable_number(3)
      assert_equal 2520,      @solution.largest_divisable_number(10)
      assert_equal 232792560, @solution.largest_divisable_number(20)
    end

    it "return 1 if the argument value less or equal 1" do
      assert_equal 1, @solution.largest_divisable_number(1)
      assert_equal 1, @solution.largest_divisable_number(0)
      assert_equal 1, @solution.largest_divisable_number(-1)
    end
  end
end
