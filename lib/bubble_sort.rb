class BubbleSort
  attr_accessor :bubble_array

  def sort(bubble_array)
    previous_index = 0
    current_index = 1
    @swap = 0
    counter = 0
    if bubble_array != bubble_array.sort
      while counter < (bubble_array.length - 1)
      while current_index < bubble_array.length
        if bubble_array[current_index] < bubble_array[previous_index]
          @swap += 1
          previous = bubble_array[previous_index]
          current = bubble_array[current_index]
          bubble_array[previous_index] = current
          bubble_array[current_index] = previous
          previous_index +=1
          current_index +=1
        else
          previous_index +=1
          current_index +=1
        end
      end
            previous_index = 0
            current_index = 1
            counter += 1
      end
      bubble_array
    end
  end

    def results(bubble_array)
      result = bubble_array
      "Final result : #{result} Swaps: #{@swap}"
    end

 end
