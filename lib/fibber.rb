require 'pry'
class Fibber

  def quantity_test(num)
    main_array = [0,1]
    while main_array.length < num do
      initial_array = [main_array[-2], main_array[-1]]
      main_array << initial_array.inject(:+)
      main_array[-1]
    end
    main_array[-1]
  end

  def quantity(num = 15)
    main_array = [0,1]
    while main_array.length < num do
      initial_array = [main_array[-2], main_array[-1]]
      main_array << initial_array.inject(:+)
      main_array[-1]
    end
    count = 0
      main_array.each do |number|
        if count < 6
        print "#{number} "
         count += 1
       else puts "#{number} "
          count = 0
        end
    end
    # main_array[-1]
  end

end
#initial array is 0 and 1
#next number is sum of two previous nums
#next num gets pushed into initial array
#next num is sum of [-1] and [-2]
#0, 1, 1
#1, 1, 2
#1, 2, 3
#2, 3, 5
#3, 5, 8
#5, 8, 13
#8, 13, 21
#output is in five elements
#quantity 15 gives you the 15 numbers in Fibbonacci
