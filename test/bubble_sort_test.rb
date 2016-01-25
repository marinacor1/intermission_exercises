gem 'minitest', '~> 5.2'
require './lib/bubble_sort'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class BubbleSortTest < Minitest::Test
  def test_bubble_instance_created
    bubble = BubbleSort.new
    assert bubble.instance_of?(BubbleSort)
  end

  def test_if_current_is_less_than_previous_than_values_swapped
    bubble = BubbleSort.new
    assert_equal [0, 1, 2, 3, 4, 5], bubble.sort([1, 0, 2, 3, 4, 5])
  end

  def test_sort_works_with_more_complicated_array
    # skip
    bubble = BubbleSort.new
    assert_equal [0, 1, 2, 3, 4, 5], bubble.sort([1, 0, 2, 4, 3, 5])
  end

  def test_sort_works_with_multi_complex_swaps
    bubble = BubbleSort.new
    assert_equal [0, 1, 3, 4, 5], bubble.sort([4, 3, 5, 0, 1])
  end



end
