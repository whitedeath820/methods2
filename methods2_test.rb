require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods2'

class Methods2Test < MiniTest::Test
	def setup
		@m = Class.new do
     include Methods2
   	end.new
	end

	def test_elevenish
		assert_equal true, @m.elevenish?(121)
		assert_equal true, @m.elevenish?(11)
		assert_equal true, @m.elevenish?(12)
		assert_equal false, @m.elevenish?(14)
		assert_equal false, @m.elevenish?(1)
		assert_equal false, @m.elevenish?(0)
		assert_equal true, @m.elevenish?(-11)
	end

	def test_ice_cream_party
		assert_equal 0, @m.ice_cream_party(1, 3)
		assert_equal 1, @m.ice_cream_party(3, 3)
		assert_equal 2, @m.ice_cream_party(10, 20)
		assert_equal 2, @m.ice_cream_party(11, 2)
		assert_equal 2, @m.ice_cream_party(4, 1)
		assert_equal 0, @m.ice_cream_party(1, 1)
	end

	def test_squirrel_party?
		assert_equal true, @m.squirrel_party?(true, 60)
		assert_equal true, @m.squirrel_party?(false, 60)
		assert_equal false, @m.squirrel_party?(true, 39)		
		assert_equal false, @m.squirrel_party?(false, 61)
	end

	def test_ticket
		assert_equal 10, @m.ticket(10, 0, 1)
		assert_equal 5, @m.ticket(21, 0, 11)
		assert_equal 0, @m.ticket(1, 1, 1)
	end

	def test_in_order?
		assert_equal true, @m.in_order?(1, 2, 3, false)
		assert_equal true, @m.in_order?(3, 2, 3, true)
		
	end

	def test_less_by_ten?
		assert_equal true, @m.less_by_ten?(20, 10, 3)
		assert_equal false, @m.less_by_ten?(122, 3, 44)
		
	end

	def test_fizz_string
		assert_equal "buzz", @m.fizz_string("hib")
		
	end
end
