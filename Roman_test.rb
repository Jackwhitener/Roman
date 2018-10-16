require "minitest/autorun"
require_relative "roman.rb"
class My_test < Minitest::Test
	def test_one
		assert_equal("I", 1.to_roman)
	end
	def test_two
		assert_equal("IX", 9.to_roman) 
	end
	def test_three
		assert_equal("III", 3.to_roman)
	end
	def test_four
		assert_equal("MCMLXXXIX", 1989.to_roman)
	end
end