gem 'minitest', '~> 5.2'
require './lib/collections'
require 'minitest/autorun'
require 'minitest/pride'

class CollectionsTest < Minitest::Test
  def test_collections_instantiates
    collection = Collections.new
    collection.instance_of?(Collections)
  end

  def test_method_organizes_names_by_age_order
    skip
    collection = Collections.new
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
    skip
    collection = Collections.new
    data = [
      ['Frank', 33],
      ['Stacy', 15],
      ['Juan', 24],
      ['Dom', 32],
      ['Steve', 24],
      ['Jill', 24]
    ]
    assert_equal ['Frank (33)', 'Stacy (15)', 'Juan(24)', 'Dom (32)', 'Steve (24)', 'Jill(24)'],collection.name_age(data)
  end

end
