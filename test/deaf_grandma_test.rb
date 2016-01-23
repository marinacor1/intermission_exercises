gem 'minitest'
require_relative './lib/deaf_grandma'

class DeafGrandmaTest < Minitest::Test
  def test_instance_of_deaf_grandma_created
    granny = DeafGrandma.new
    granny.instance_of?(DeafGrandma)
  end

end
