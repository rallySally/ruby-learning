require "minitest/autorun"

class EnumeratorPlayground < Minitest::Test

##############################
## Working with EnumeraTORs ##
##############################

  def test_create_enumerator_with_each
    enumerator = %w[one two three].each
    assert_equal enumerator.class, Enumerator
  end

  def test_difference_to_enumerable_array
    enumerable = %w[one two three]
    assert_equal enumerable.class, Array # is an enumeraBLE
  end

  def test_create_enumerator_with_to_enum
    enumerable = %w[one two three] # is an enumeraBLE
    enumerator = enumerable.to_enum # is an enumeraTOR
    assert_equal enumerator.class, Enumerator
  end

  def test_create_enumerator_with_new_to_create_enumerable
    new_enumerable = Enumerator.new do |y|
      a = 1
      loop do
        y << a
        a = a + 1
      end
    end

    enumerable_classic = [1, 2, 3]
    enumerable_from_enumerator = new_enumerable.take(3)
    assert_equal enumerable_classic, enumerable_from_enumerator
  end

  def test_size_on_enumerator
    enumerator = %w[one two three].each
    assert_equal enumerator.size, 3
  end

  def test_next_on_enumerator
    enumerator = %w[one two three].each
    enumerator.next # "one"
    enumerator.next # "two"
    assert_equal enumerator.next, "three"
  end

  def test_peek_on_enumerator
    enumerator = %w[one two three].each
    enumerator.peek # "one"
    enumerator.peek # still "one"
    assert_equal enumerator.peek, "one"
  end

  def test_access_after_last_element_on_enumerator
    enumerator = %w[one two three].each
    enumerator.next # "one"
    enumerator.next # "two"
    enumerator.next # "three", end is reached
    assert_raises StopIteration do
      enumerator.peek # same for next
    end
  end

##########################################################
## Working with EnumeraBLEs (scratching on the surface) ##
##########################################################

  def test_map_on_enumerable
    enumerable_a = [1, 2, 3]
    a_squared_by_hand = []
    for i in enumerable_a
      a_squared_by_hand << i*i
    end
    a_squared_by_map = enumerable_a.map { |i| i*i }
    assert_equal a_squared_by_hand, a_squared_by_map
  end

  def test_inject_on_enumerable
    enumerable_a = [1, 2, 3]
    enumerable_b = [3]
    a = enumerable_a.inject(0) { |sum, n| sum + n } # "(0)" can be omitted
    b = enumerable_b.inject(((0) + 1) + 2) { |sum, n| sum + n }
    c = (((0) + 1) + 2) + 3
    assert_equal a, b
    assert_equal a, 6
  end

end
    
