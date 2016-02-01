gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/basic_stack'
require 'pry'

class BasicStackTest < Minitest::Test
  def test_basic_stack_instantiates
    bs = BasicStack.new
    assert bs.instance_of?(BasicStack)
  end

  def test_stack_is_empty
    bs = BasicStack.new
    assert_equal 0, bs.stack.count
  end

  def test_push_add_element_to_stack
    bs = BasicStack.new
    assert_equal 0, bs.stack.length
    bs.push(1)
    assert_equal 1, bs.stack.length
  end

  def test_pop_removes_element_from_stack
    bs = BasicStack.new
    bs.push(1)
    assert_equal 1, bs.stack.length
    bs.pop
    assert_equal 0, bs.stack.length
  end

  def test_count_gives_num_of_elements_on_stack
    bs = BasicStack.new
    assert bs.stack.length == bs.stack.count_method
  end

  def test_peek_shows_first_element
    skip
    bs = BasicStack.new
    assert bs.stack.peek == bs.stack[0]
  end

  def test_max_shows_largest_value_in_stack
    skip
    bs = BasicStack.new
    assert bs.stack.max_method == bs.stack.max
  end

  def test_it_works_like_a_stack
    skip
    bs = BasicStack.new
    assert_equal 0, bs.stack.count
    bs.stack.push(5)
    assert_equal 1, bs.stack.count
    assert_equal 0, bs.stack.count
  end
end
