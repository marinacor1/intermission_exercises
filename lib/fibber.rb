require 'pry'
class Fibber

  def quantity(num = 15)
    main_array = [0,1]
    output = ""
    while main_array.length < num do
      initial_array = [main_array[-2], main_array[-1]]
      main_array << initial_array.inject(:+)
      main_array[-1]
    end
      count = 0
      main_array.each do |number|
        if count < 5
          output +=  "#{number} "
          count += 1
        else
          output += "\n #{number} "
          count = 1
        end
      end
       output
    end


  end
