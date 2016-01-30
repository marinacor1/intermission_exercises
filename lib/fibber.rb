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

class Fibber #module maybe?
​
  def quantity(num = 15)
    # RF: This does something
    main_array = [0,1]
    output = ""
    while main_array.length < num do # RS: is there a way to avoid using while?
      initial_array = [main_array[-2], main_array[-1]] # RS: do 8-9 really need to be separate lines; do you need to use arrays to do what you are trying to do?
      main_array << initial_array.inject(:+)
      main_array[-1] # it doesn't feel like this line is doing anything
    end
​
    # RF: This does another thing
    count = 0
    main_array.each do |number|
      if count < 5
        output +=  "#{number} "
        count += 1
      else
        output += "\n #{number} "
        count = 1
      end #RF: perhaps looks into a different enumerable (i.e. not each), or using array slicing, array.join, maybe google something like "print out an array in ruby five elements on each line"
    end
​
    output
  end
end
