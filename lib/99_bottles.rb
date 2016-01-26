require 'pry'
class Bottles

  def song(number = 99)
    output = ""
    while number > 1
      output = output.concat("#{number} bottles of beer on the wall, #{number} bottles of beer. Take one down and pass it around,")
      number -= 1
      output
    end
    while number <= 1
      if number == 1
        output = output.concat("#{number} bottle of beer on the wall, #{number} bottle of beer. Take one down and pass it around, no more bottles of beer on the wall.")
        number -=1
        output
      elsif number == 0
        output = output.concat("No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall.")
        number -=1
      else
        break
      end
    end
      output
  end
end
