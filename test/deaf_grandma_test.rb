gem 'minitest'
require './lib/deaf_grandma'

class DeafGrandmaTest < Minitest::Test
  def test_instance_of_deaf_grandma_created
    granny = DeafGrandma.new
    granny.instance_of?(DeafGrandma)
  end

  def test_if_no_input_respond_with_what
    granny = DeafGrandma.new
    assert_equal "WHAT?!", granny.says
  end

  def test_if_lower_case_input_respond_with_suk
    granny = DeafGrandma.new
    assert_equal "SPEAK UP, KID!", granny.says('hi grandma')
  end

  def test_if_lower_case_with_diff_input_respond_with_suk
    granny = DeafGrandma.new
    assert_equal "SPEAK UP, KID!", granny.says('hola')
  end

  def test_if_all_caps_responds_with_no_response
    granny = DeafGrandma.new
    assert_equal "NO, NOT SINCE 1946!", granny.says('HELLO')
  end

  def test_if_diff_all_caps_responds_with_no_response
    granny = DeafGrandma.new
    assert_equal "NO, NOT SINCE 1946!", granny.says('DO YOU DANCE?')
  end

  def test_first_goodbye_response
    granny = DeafGrandma.new
    assert_equal 'LEAVING SO SOON?', granny.says('GOODBYE!')
  end

  def test_second_goodbye_response
    granny = DeafGrandma.new
    granny.says('GOODBYE!')
    assert_equal 'LATER, SKATER!', granny.says('GOODBYE!')
  end

  def test_third_goodbye_same_result
   granny = DeafGrandma.new
   granny.says('GOODBYE!')
   granny.says('GOODBYE!')
   assert_equal 'LATER, SKATER!', granny.says('GOODBYE!')
  end
end
