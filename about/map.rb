require 'minitest/autorun'

class MappingPlayground < Minitest::Test

  def test_map_applies_block_to_elements
    assert_equal [2, 4, 6], [1, 2, 3].map {|n| n*2}
  end

end
