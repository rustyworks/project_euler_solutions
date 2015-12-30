require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'solution'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

describe Solution do
  before do
    @solution = Solution.new
  end

  describe "#sum_and_power" do
    it "return sum number from 1 to n and then power it by 2" do
      assert_equal 3025, @solution.sum_and_power(10)
      assert_equal 225, @solution.sum_and_power(5)
    end
  end

  describe "#power_each_number_and_sum" do
    it "return each number from 1 to n that power by 2 and sum it" do
      assert_equal 385, @solution.power_each_number_and_sum(10)
      assert_equal 55, @solution.power_each_number_and_sum(5)
    end
  end

  describe "#difference" do
    it "return difference between sum_and_power and power_each_number_and_sum" do
      assert_equal 2640, @solution.difference(10)
      assert_equal 25164150, @solution.difference(100)
    end
  end
end
