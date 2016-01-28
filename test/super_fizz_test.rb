gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/super_fizz'

class SuperFizzTest < Minitest::Test
  def test_super_fizz_instantiates
    skip
  #  SuperFizz = SuperFizz.new
   sf.instance_of?(SuperFizz)
  end

  def iterates_from_0_to_1000
   assert_equal 1001, SuperFizz.machine.length
  end

  def test_prints_number_divisible_by_3_5_7_with_SFB
    assert_equal 'SuperFizzBuzz', SuperFizz.machine(105)[0]
  end

  def test_prints_number_divisible_by_3_with_SFB
    assert_equal 'Fizz', SuperFizz.machine(108)[0]
  end

  def test_prints_number_divisible_by_3_with_SFB
    assert_equal 2, SuperFizz.machine(2)[0]
  end

  def test_prints_if_div_by_3_and_7
    assert_equal 'SuperFizz', SuperFizz.machine(21)[0]
  end

  def test_prints_number_divisible_by_3_5_with_SFB
    skip
    assert_equal 'Fizz', SuperFizz.machine(15)[0]
  end

  # def test_machine_mapping_works
  #   skip
  #
  #   assert_equal 'SuperFizz', SuperFizz.machine_mapping(21)
  # end
  #
  # def test_machine_mapping_works
  #   skip
  #   sf = SuperFizz.new
  #   assert_equal 'SuperBuzz', sf.machine_mapping(35)
  # end

  def test_prints_SB_if_div_by_5_and_7
    # sf = SuperFizz.new
    #35
    assert_equal 'SuperBuzz', SuperFizz.machine(35)[0]
  end

  def test_prints_f_if_divisble_by_3
    # SuperFizz = SuperFizz.new
    #3
    assert_equal 'Fizz', SuperFizz.machine(3)[0]
  end

  def test_prints_b_if_div_by_5
    # SuperFizz = SuperFizz.new
    #5
    assert_equal 'Buzz', SuperFizz.machine(5)[0]
  end

  def test_prints_s_if_div_by_7
    # SuperFizz = SuperFizz.new
    #7
    assert_equal 'Super', SuperFizz.machine(7)[0]
  end

end
