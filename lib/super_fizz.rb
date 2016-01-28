module SuperFizz
  # attr_accessor :output_array
  #
  # def initialize(number = 0)
  #   @number = number
  #   machine(number)
  # end

  # def machine_mapping(number = 0)
  #   while number < 1001
  #   binding.pry
  #     {
  #     number%3 == 0 => 'Fizz',
  #     number%5 == 0 => 'Buzz',
  #     number%7 == 0 => 'Super'
  #     }
  #     number +=1
  #   end
  # end

  def self.machine(number = 0)
    numbers = (number..1000).to_a
    output_array = numbers.map {|num| fizz(num)}
  end

  def self.fizz(num)
    # if number is divisble by 7, add "super" to your output
    output = ""
    output = "Super" if num%7 ==0
    output += "Fizz" if num%3 == 0
    output += "Buzz" if num%5 == 0
    output = num if output.empty?
    output
  end
    # if num%3 == 0 && num%5 == 0 && num%7 ==0
    #   "SuperFizzBuzz"
    # elsif num%3 == 0 && num%7 == 0
    #   "SuperFizz"
    # elsif num%5 == 0 && num%7 == 0
    #   "SuperBuzz"
    # elsif num%3 == 0
    #   "Fizz"
    # elsif num%5 == 0
    #   "Buzz"
    # elsif num%7 == 0
    #   "Super"
    # else
    #   num
    # end

  # end
end
