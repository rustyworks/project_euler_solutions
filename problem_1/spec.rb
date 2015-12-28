require 'minitest/spec'
require 'minitest/autorun'
require_relative 'solution'

describe Solution do
  before do
    @solution = Solution.new
  end

  describe "#sum_of_multiple_3_and_5_before" do
    describe "general" do
      it "return the right value" do
        assert_equal 23, @solution.sum_of_multiple_3_and_5_before(10)
      end

      it "return 0 if given negative value" do
        assert_equal 0, @solution.sum_of_multiple_3_and_5_before(-5)
      end

      it "return 0 if given 0" do
        assert_equal 0, @solution.sum_of_multiple_3_and_5_before(0)
      end
    end
  end
end
