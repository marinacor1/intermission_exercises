gem 'minitest'
require './lib/bubble_sort'

class BubbleSortTest < Minitest::Test
  def test_bubble_instance_created
    bubble = BubbleSort.new[1, 0, 2, 3, 4, 5]
    assert bubble.instance_of?(BubbleSort)
  end

  def test_initial_bubble_is_array
    skip
    bubble = BubbleSort.new[1, 0, 2, 3, 4, 5]
    assert_equal Array, bubble.class
  end

  def test_if_current_is_less_than_previous_than_values_swapped
    skip
    bubble = BubbleSort.new[1, 0, 2, 3, 4, 5]
    bubble.sort
    assert_equal 1, bubble[1]
    assert_equal, [0, 1, 2, 3, 4, 5], bubble.sort 
  end

end
