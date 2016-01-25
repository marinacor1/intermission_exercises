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

  def test_sort_works_with_2_swaps
    bubble = BubbleSort.new
    assert_equal [0, 1, 2, 3, 4, 5], bubble.sort([1, 0, 2, 4, 3, 5])
  end

  def test_sort_works_with_multi_complex_swaps
    bubble = BubbleSort.new
    assert_equal [0, 1, 3, 4, 5], bubble.sort([4, 3, 5, 0, 1])
  end

  def test_sort_works_regardless_of_number_of_swaps
    bubble = BubbleSort.new
    assert_equal [0, 1, 2, 3, 4, 5], bubble.sort([5, 4, 3, 2, 1, 0])
  end

  def test_sort_works_with_long_array
    bubble = BubbleSort.new
    assert_equal [0, 1, 2, 3, 4, 5, 6, 7, 8], bubble.sort([8, 7, 6, 5, 4, 3, 2, 1, 0])
  end

  def test_results_gives_accurate_information
    bubble = BubbleSort.new
    array = bubble.sort([1, 0, 2, 3, 4, 5])
    assert_equal "Final result : [0, 1, 2, 3, 4, 5] Swaps: 1", bubble.results(array)
  end

  def test_result_works_with_various_arrays
    bubble = BubbleSort.new
    array = bubble.sort([5, 4, 3, 2, 1, 0])
    assert_equal "Final result : [0, 1, 2, 3, 4, 5] Swaps: 15", bubble.results(array)
  end

end
