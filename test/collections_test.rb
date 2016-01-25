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
    skip
    collection = Age.new
    data = [
      ['Frank', 33],
      ['Stacy', 15],
      ['Juan', 24],
      ['Dom', 32],
      ['Steve', 24],
      ['Jill', 24]
    ]
    assert_equal ['Stacy (15)', 'Jill(24)', 'Juan(24)', 'Steve (24)', 'Dom (32)', 'Frank (33)'], collection.name_age_alpha(data)
  end

  def test_hash_for_names_age
    skip
    collection = Age.new
    data = [
      ['Frank', 33],
      ['Stacy', 15],
      ['Juan', 24],
      ['Dom', 32],
      ['Steve', 24],
      ['Jill', 24]
    ]
    hash = {15 => ['Stacy'], 24 => ['Juan', 'Steve', 'Jill'], 32 => ['Dom'], 33 => ['Frank'] }
    assert_equal hash, collection.names_hash(data)
  end

end
