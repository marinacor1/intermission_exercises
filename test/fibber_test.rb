gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/fibber'

class FibberTest < Minitest::Test
  def test_fibber_instantiates
    f = Fibber.new
    assert f.instance_of?(Fibber)
  end

  def test_third_num_is_sum_of_first_two_nums
    f = Fibber.new
    output = "0 1 1 "
     assert_equal output, f.quantity(3)
  end

  def test_fourth_num_is_sum_of_1_and_1
    f = Fibber.new
    output = "0 1 1 2 "
    assert_equal output, f.quantity(4)
  end

  def test_fifth_num_is_sum_of_1_and_2
    f = Fibber.new
    output = "0 1 1 2 3 "
    assert_equal output, f.quantity(5)
  end

  def test_sixth_num_is_sum_of_2_and_3
    skip
    f = Fibber.new
    output =
"0 1 1 2 3
 5 "
    assert_equal output, f.quantity(6)
  end

  def test_seventh_num_is_sum_of_5_and_3
    skip
    f = Fibber.new
    output = "0 1 1 2 3
5 8 "
    assert_equal output, f.quantity(7)
  end

  def test_eighth_num_is_sum_of_5_and_8
    skip
    f = Fibber.new
    output = "0 1 1 2 3
5 8 13 "
    assert_equal output, f.quantity(8)
  end

  def test_ninth_num_is_sum_of_8_and_13
    skip
    f = Fibber.new
    output =
"0 1 1 2 3
5 8 13 21 "
    assert_equal output, f.quantity(9)
  end
  def test_output_is_five_elements
    skip
    f = Fibber.new
    output =
    "0 1 1 2 3
5 8 13 21 34
55 89 144 233 377 "
    assert_equal output, f.quantity
  end
end
