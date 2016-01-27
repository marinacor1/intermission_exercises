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
      output = fizz(number)
      output_array << output
      number += 1
    end
    output_array
  end


  # def machine(number = [])
  #   number = (0..1000).to_a
  #   number.each {|num| fizz(num)}
  # end

  def fizz(num)
    if num%3 == 0 && num%5 == 0 && num%7 ==0
      "SuperFizzBuzz"
    elsif num%3 == 0 && num%7 == 0
      "SuperFizz"
    elsif num%5 == 0 && num%7 == 0
      "SuperBuzz"
    elsif num%3 == 0
      "Fizz"
    elsif num%5 == 0
      "Buzz"
    elsif num%7 == 0
      "Super"
    else
      num
    end

  end
end
