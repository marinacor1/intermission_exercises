gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/basic_stack'

class BasicStackTest < Minitest::Test
  def test_basic_stack_instantiates
    bs = BasicStack.new
    assert bs.instance_of?(BasicStack)
  end

  def test_push_add_element_to_stack
    skip
    bs = BasicStack.new
    first = bs.length
    bs.push
    assert_equal 1, bs.length - first
  end

  def test_pop_removes_element_from_stack
    skip
    bs = BasicStack.new
    first = bs.length
    bs.pop
    assert_equal -1, bs.length - first
  end

  def test_count_gives_num_of_elements_on_stack
    skip
    bs = BasicStack.new
    assert bs.length == bs.count
  end

  def test_peek_shows_first_element
    skip
    bs = BasicStack.new
    assert bs.peek == bs[0]
  end

  def test_max_shows_largest_value_in_stack
    skip
    bs = BasicStack.new
    assert bs.max_method == bs.max
  end
end
