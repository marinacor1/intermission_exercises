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

  def test_song_last_line_is_correct_when_given_number
   bottle = Bottles.new
   assert_equal "No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall.", bottle.song(0)
  end

  def test_0_1_2_work_properly
    bottle = Bottles.new
    assert_equal "2 bottles of beer on the wall, 2 bottles of beer. Take one down and pass it around,1 bottle of beer on the wall, 1 bottle of beer. Take one down and pass it around, no more bottles of beer on the wall.No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall.", bottle.song(2)
   end


end
