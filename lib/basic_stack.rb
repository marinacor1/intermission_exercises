require 'pry'
class BasicStack
  attr_accessor :stack

  def initialize
    @stack = []
  end

  def push_method(new_element)
    @stack += [new_element]
  end

  def pop_method
    @stack.delete(@stack[-1])
  end

  def count_method
    count = 0
    @stack.each {|element| count +=1}
    count
  end

end
