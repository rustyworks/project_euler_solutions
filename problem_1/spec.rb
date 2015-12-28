require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'solution'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

describe Solution do
  before do
    @solution = Solution.new
  end

  describe "#sum_of_multiple_3_and_5_before" do
    describe "when arguments is positive integer" do
      it "return the sum of multiple 3 and 5 before the argument" do
        assert_equal 23, @solution.sum_of_multiple_3_and_5_before(10)
        assert_equal 233168, @solution.sum_of_multiple_3_and_5_before(1000)
      end
    end

    describe "when arguments is negative integer" do
      it "return 0" do
        assert_equal 0, @solution.sum_of_multiple_3_and_5_before(-5)
      end
    end

    describe "when arguments is zero" do
      it "return 0" do
        assert_equal 0, @solution.sum_of_multiple_3_and_5_before(0)
      end
    end

    describe "when arguments is decimal" do
      it "convert to integer and return the right value" do
        assert_equal 23, @solution.sum_of_multiple_3_and_5_before(10.9)
        assert_equal 23, @solution.sum_of_multiple_3_and_5_before(10.1)
      end
    end
  end
end
