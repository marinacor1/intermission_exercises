gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/super_fizz'

class SuperFizzTest < Minitest::Test
  def test_super_fizz_instantiates
   sf = SuperFizz.new
   sf.instance_of?(SuperFizz)
  end

  def iterates_from_0_to_1000
   sf = SuperFizz.new
   assert_equal 1001, sf.machine.length
  end

  def test_prints_number_divisible_by_3_5_7_with_SFB
    sf = SuperFizz.new
    assert_equal 'SuperFizzBuzz', sf.machine(105)[0]
  end

  def test_prints_number_divisible_by_3_with_SFB
    sf = SuperFizz.new
    assert_equal 'Fizz', sf.machine(108)[0]
  end

  def test_prints_number_divisible_by_3_with_SFB
    sf = SuperFizz.new
    assert_equal 2, sf.machine(2)[0]
  end

  def test_prints_sf_if_div_by_3_and_7
    sf = SuperFizz.new
    assert_equal 'SuperFizz', sf.machine(21)[0]
  end

  def test_prints_number_divisible_by_3_5_with_SFB
    sf = SuperFizz.new
    assert_equal 'Fizz', sf.machine(15)[0]
  end

  # def test_machine_mapping_works
  #   skip
  #   sf = SuperFizz.new
  #   assert_equal 'SuperFizz', sf.machine_mapping(21)
  # end
  #
  # def test_machine_mapping_works
  #   skip
  #   sf = SuperFizz.new
  #   assert_equal 'SuperBuzz', sf.machine_mapping(35)
  # end

  def test_prints_SB_if_div_by_5_and_7
    sf = SuperFizz.new
    #35
    assert_equal 'SuperBuzz', sf.machine(35)[0]
  end

  def test_prints_f_if_divisble_by_3
    sf = SuperFizz.new
    #3
    assert_equal 'Fizz', sf.machine(3)[0]
  end

  def test_prints_b_if_div_by_5
    sf = SuperFizz.new
    #5
    assert_equal 'Buzz', sf.machine(5)[0]
  end

  def test_prints_s_if_div_by_7
    sf = SuperFizz.new
    #7
    assert_equal 'Super', sf.machine(7)[0]
  end

end
