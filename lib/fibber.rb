require 'pry'
class Fibber
  attr_accessor :main_array, :output

  def quantity(num = 15)
    main_array = [0,1]
    while main_array.length < num do
      initial_array = [main_array[-2], main_array[-1]]
      main_array << initial_array.inject(:+)
      main_array[-1]
    end
      print_lines(main_array)
       @output
  end

  def print_lines(main_array)
    @output = ""
    count = 0
    # @output = main_array.each_slice(5) { |num| p num.to_s}

    main_array.each do |number|
      if count < 5
        @output +=  "#{number} "
        count += 1
      else
        @output += "\n #{number} "
        count = 1
      end
    output
    end
  end

end

# class Fibber
#   #module maybe?
# ​ def quantity(num = 15)
#     main_array = [0,1]
#     output = ""
#     while main_array.length < num do # RS: is there a way to avoid using while?
#       initial_array = [main_array[-2], main_array[-1]] # RS: do 8-9 really need to be separate lines; do you need to use arrays to do what you are trying to do?
#       main_array << initial_array.inject(:+)
#       main_array[-1] # it doesn't feel like this line is doing anything
#       five_line_print
#     end
#   end
# ​
# def five_line_print
#     count = 0
#     main_array.each do |number|
#       if count < 5
#         output +=  "#{number} "
#         count += 1
#       else
#         output += "\n #{number} "
#         count = 1
#       end #RF: perhaps looks into a different enumerable (i.e. not each), or using array slicing, array.join, maybe google something like "print out an array in ruby five elements on each line"
#     end
# ​
#     output
#   end
# end
