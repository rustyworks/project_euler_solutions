require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'solution'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

describe Solution do
  before do
    @solution = Solution.new
  end

  describe "#palindrome?" do
    it "return true if given palindrome number" do
      assert @solution.palindrome?(1)
      assert @solution.palindrome?(111)
      assert @solution.palindrome?(32123)
      assert @solution.palindrome?(556655)
    end

    it "return false if given non palindrome number" do
      refute @solution.palindrome?(21)
      refute @solution.palindrome?(112)
    end
  end

  describe "#largest_palindrome_created" do
    it "return the largest palindrome posible created by multiplication of n-digits argument"  do
      assert_equal 9009, @solution.largest_palindrome_created(2)
      assert_equal 906609, @solution.largest_palindrome_created(3)
    end
  end
end
