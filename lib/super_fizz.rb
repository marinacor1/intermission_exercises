class SuperFizz

  def machine(number = 0)
    binding.pry
    while number < 1001
      if number%7 == 0
        output = 'Super'
        if number%5 == 0
          output = output.concat('Buzz')
          if number %3 == 0
            output = output.concat('Fizz')
          end
        end
      elsif number %5 == 0
        output = 'Buzz'
        if number%3 == 0
          output = output.concat('Fizz')
        end
      elsif number %3 == 0
        output = 'Fizz'
      else
        output = number
      end
      output
      #  "#{number} is equal to #{output}"
      number += 1
    end
     output
  end





end
