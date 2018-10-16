require "minitest/autorun"
require_relative "roman.rb"
class My_test < Minitest::Test

	def test_one
		input = 1
		assert_equal("I",convert(input))
	end
end
