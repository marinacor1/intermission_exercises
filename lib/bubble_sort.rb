class BubbleSort
  attr_accessor :bubble_array

  def sort(bubble_array)
        # binding.pry
    previous_index = 0
    current_index = 1
    swap = 0
    max_index = bubble_array.length - 1 #4
    #loop_max = (bubble_array.length * (bubble_array.length- 1)) + 1
    #21
      # binding.pry
     while current_index < max_index
      if bubble_array[current_index] < bubble_array[previous_index]
        #3 <
        swap += 1
        previous = bubble_array[previous_index]
        current = bubble_array[current_index]
        bubble_array[previous_index] = current
        bubble_array[current_index] = previous
        previous_index +=1
        current_index +=1
          # if previous_index + 1 < max_index #might be wrong
          #  previous_index +=1
          #  current_index +=1
          # else
          #   previous_index = 0
          #   current_index = 1
          # end
      else
        previous_index +=1
        current_index +=1
      end
    end
          bubble_array
    end
 end

# Pre-Sequence Previous Current Swap? Post-Sequence
#
# 4 3 5 0 1       4        3      Y    3 4 5 0 1
# 3 4 5 0 1       3        4      N    3 4 5 0 1
# 3 4 5 0 1       4        5      N    3 4 5 0 1
# 3 4 5 0 1       5        0      Y    3 4 0 5 1
# 3 4 0 5 1       3        4      N    3 4 0 5 1
# 3 4 0 5 1       4        0      Y    3 0 4 5 1
# 3 0 4 5 1       3        0      Y    0 3 4 5 1
# 0 3 4 5 1       0        3      N    0 3 4 5 1
# 0 3 4 5 1       3        4      N    0 3 4 5 1
# 0 3 4 5 1       4        5      N    0 3 4 5 1
# 0 3 4 5 1       5        1      Y    0 3 4 1 5
# 0 3 4 1 5       0        3      N    0 3 4 1 5
# 0 3 4 1 5       3        4      N    0 3 4 1 5
# 0 3 4 1 5       4        1      Y    0 3 1 4 5
# 0 3 1 4 5       0        3      N    0 3 1 4 5
# 0 3 1 4 5       3        1      Y    0 1 3 4 5
# 0 1 3 4 5       0        1      N    0 1 3 4 5
# 0 1 3 4 5       1        3      N    0 1 3 4 5
# 0 1 3 4 5       3        4      N    0 1 3 4 5
# 0 1 3 4 5       4        5      N    0 1 3 4 5
# 0 1 3 4 5       5        nil
# ```
#
# Once that `nil` pops up in `current` then we're done! We'd say that this run
# of the algorithm made `7` swaps.