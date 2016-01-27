class SuperFizz
  # attr_accessor :output_array
  #
  # def initialize(number = 0)
  #   @number = number
  #   machine(number)
  # end

  # def machine_mapping(number = 0)
  #   while number < 1001
  #   binding.pry
  #     {number => 'whatever',
  #     number%3 == 0 => 'Fizz',
  #     number%5 == 0 => 'Buzz',
  #     number%7 == 0 => 'Super'
  #     }
  #     number +=1
  #   end
  # end

  def machine(number =  0)
    output_array = []
    # binding.pry
    while number < 1001
      if number%7 == 0
        output = 'Super'
        if number %3 == 0
          output = output.concat('Fizz')
        end
        if number %5 == 0
          output = output.concat('Buzz')
        end
      elsif number%5 == 0 && number%7 !=0
        output = 'Buzz'
          if number%3 == 0
            output = output.concat('Fizz')
          end
      elsif number%3 == 0 && number%7 !=0 && number%5 != 0
        output = 'Fizz'
      else
        output = number
      end
        output_array << output
        number += 1
      end
    output_array
  end

end
