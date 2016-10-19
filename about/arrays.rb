require 'minitest/autorun'

class ArrayPlayground < Minitest::Test

  def test_access_element
    a = [1,2,3]
    assert_equal 2, a[1]
  end

  def test_each_on_array
    a = [1,2,3,4]
    sum = 0
    # not ruby like, use inject
    # see https://ruby-doc.org/core-2.3.1/Enumerable.html#method-i-inject
    a.each do | n |
      sum = sum + n
    end
    assert_equal 10, sum
  end

  def test_map
    a = [1,2,3]
    assert_equal [2, 4, 6], a.map { |n| n * 2 }

  end


end
