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
  
  def test_create_empty_array
	a = Array.new(5)
	assert_equal 5, a.length
  end
  
  def test_add_item_to_end
	a = ["a", "b", "c"]
	a << "d"
	assert_equal "d", a[-1]
  end
  
  def test_destructive_selection
	a = ["We", "Say", "Hello", "To", "The", "World"]
	a.keep_if { |str| (str.include? "H") or (str.include? "Wo")}
	assert_equal ["Hello", "World"], a
  end
  
  def test_intersection
	a = [1, 3, 5, 1] & [1, 1, 2, 3, 4]    
	assert_equal [1, 3], a
  end
  
  def test_create_string_from_array 
	str = [ 1, 2, 3 ] * ","  
	assert_equal "1,2,3", str
  end
  
  def test_concatenate_arrays
	a1 = ["Media Programming", "2017", "Web Technology"]
	a2 = ["Ruby-Learning", "Rails-Tutorial"]
	a3 = a1 + a2
	assert_equal ["Media Programming", "2017", "Web Technology", "Ruby-Learning", "Rails-Tutorial"], a3
  end


end
