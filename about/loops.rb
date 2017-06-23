require 'minitest/autorun'

class LoopsPlayground < Minitest::Test

  def test_for
    sum = 0

    for i in 0..4
      sum +=i
    end

    assert_equal 10, sum
  end

  def test_until
    index = 0

    until index > 9 do
      index +=1
    end

    assert_equal 10, index
  end

  def test_begin_until
    index = 0

    begin
      index += 1
    end until index > 9

    assert_equal 10, index
  end

  def test_each_array
    last = 0

    (0..10).each do |index|
      last = index
    end

    assert_equal 10, last
  end

  def test_while
    index = 0

    while index < 10 do
      index += 1
    end

    assert_equal 10, index
  end

  def test_begin_while
    index = 0

    begin
      index += 1
    end while index < 10

    assert_equal 10, index
  end

  def test_each_redo
    sum = 0

    (1..2).each do |i|
      sum += i
      if sum < 8
        redo
      end
    end

    assert_equal 10, sum
  end
end