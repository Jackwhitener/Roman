require "minitest/autorun"
require_relative "roman.rb"
require_relative "arabic.rb"
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
	def test_five
		assert_equal(3, "III".to_arabic)
	end
	def test_six
		assert_equal(9, "IX".to_arabic)
	end
	def test_seven
		assert_equal(10, "X".to_arabic)
	end
	def test_eight
		assert_equal(1989, "MCMLXXXIX".to_arabic)
	end
	def test_nine
		assert_equal("I", "I".to_arabic.to_roman)
	end
	def test_ten
		assert_equal(1066, "MLXVI".to_arabic)
	end
	def test_eleven
		assert_equal("CCXCIV", 294.to_roman)
	end
	def test_twelve
		assert_equal(12, "XII".to_arabic)
	end
	def test_thirteen
		assert_equal(14, 14.to_roman.to_arabic)
	end
end