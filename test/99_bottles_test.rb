gem 'minitest', '~> 5.2'
require './lib/99_bottles'
require 'minitest/autorun'
require 'minitest/pride'

class BottlesTest < Minitest::Test
  def test_bottles_is_initialized
    bottle = Bottles.new
    bottle.instance_of?(Bottles)
  end

  def test_song_last_line_is_correct
   bottle = Bottles.new
   assert_equal "No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall.", bottle.song[-128..-1]
  end

end
