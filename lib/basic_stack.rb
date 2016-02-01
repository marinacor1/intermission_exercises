require 'pry'
class BasicStack
  attr_accessor :stack

  def initialize
    @stack = []
  end

  def push(new_element)
    @stack += [new_element]
  end

  def pop
    @stack.delete(@stack[-1])
  end

  def count_method(stack)
    count = 0
    @stack.each {|element| count +=1}
    count
  end

end
