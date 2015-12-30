require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'solution'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

describe Solution do
  before do
    @solution = Solution.new
  end

  describe "#check_pytagorean_product" do
    describe "when given sum of pythagorean triplet" do
      it "return the product from pythagorean triplet" do
        assert_equal 60, @solution.check_pythagorean_product(12)
        assert_equal 31875000, @solution.check_pythagorean_product(1000)
      end
    end
  end
end
