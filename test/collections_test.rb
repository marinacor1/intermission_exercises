gem 'minitest', '~> 5.2'
require './lib/collections'
require 'minitest/autorun'
require 'minitest/pride'

class AgeTest < Minitest::Test
  def test_collections_instantiates
    collection = Age.new
    collection.instance_of?(Age)
  end

  def test_method_organizes_names_by_age_order
    collection = Age.new
    data = [
      ['Frank', 33],
      ['Stacy', 15],
      ['Juan', 24],
      ['Dom', 32],
      ['Steve', 24],
      ['Jill', 24]
    ]
    assert_equal ['Stacy', 'Juan', 'Steve', 'Jill','Dom','Frank'],collection.age_order(data)
  end

  def test_method_organizes_names_by_age_order
    collection = Age.new
    data = [
      ['Frank', 33],
      ['Stacy', 15],
      ['Juan', 24],
      ['Dom', 32],
      ['Steve', 24],
      ['Jill', 24]
    ]
    assert_equal ['Frank (33)', 'Stacy (15)', 'Juan (24)', 'Dom (32)', 'Steve (24)', 'Jill (24)'],collection.name_age(data)
  end

  def test_method_organizes_names_by_age_order_alphabetically
    collection = Age.new
    data = [
      ['Frank', 33],
      ['Stacy', 15],
      ['Juan', 24],
      ['Dom', 32],
      ['Steve', 24],
      ['Jill', 24]
    ]
    assert_equal ['Stacy (15)', 'Jill (24)', 'Juan (24)', 'Steve (24)', 'Dom (32)', 'Frank (33)'], collection.name_age_alpha(data)
  end

  def test_hash_for_names_age
    collection = Age.new
    data = [
      ['Frank', 33],
      ['Stacy', 15],
      ['Juan', 24],
      ['Dom', 32],
      ['Steve', 24],
      ['Jill', 24]
    ]
    hash = {32=>[["Dom", 32]], 33=>[["Frank", 33]], 24=>[["Jill", 24], ["Juan", 24], ["Steve", 24]], 15=>[["Stacy", 15]]}
    assert_equal hash, collection.names_hash(data)
  end

end

class StateTest < Minitest::Test

  def test_whether_state_instantiates
    state = State.new
    assert state.instance_of?(State)
  end

  def test_hash_connects_city_and_state
    skip
  states = {"Oregon" => "OR",
          "Alabama" => "AL",
          "New Jersey" => "NJ",
          "Colorado" => "CO"}
  capitals = {"OR" => "Salem",
            "AL" => "Montgomery",
            "NJ" => "Trenton",
            "CO" => "Denver"}
          end



end
