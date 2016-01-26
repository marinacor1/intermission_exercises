gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/super_fizz'

class SuperFizzTest < Minitest::Test
  def test_super_fizz_instantiates
   sf = SuperFizz.new
   sf.instance_of?(SuperFizz)
  end

  def test_prints_number_divisible_by_3_5_7_with_SFB
    skip
    sf = SuperFizz.new
    #105
    assert_equal 'SuperFizzBuzz', sf.machine
  end

  def test_prints_sf_if_div_by_3_and_7
    skip
    sf = SuperFizz.new
    #21
    assert_equal 'SuperFizz', sf.machine
  end

  def test_prints_SB_if_div_by_5_and_7
    skip
    sf = SuperFizz.new
    #35
    assert_equal 'SuperBuzz', sf.machine
  end

  def test_prints_f_if_divisble_by_3
    skip
    sf = SuperFizz.new
    #3
    assert_equal 'Fizz', sf.machine
  end

  def test_prints_b_if_div_by_5
    skip
    sf = SuperFizz.new
    #5
    assert_equal 'SuperFizzBuzz', sf.machine
  end

  def test_prints_s_if_div_by_7
    skip
    sf = SuperFizz.new
    #7
    assert_equal 'SuperFizzBuzz', sf.machine
  end

end
