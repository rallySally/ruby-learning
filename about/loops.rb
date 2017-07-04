
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

    # second batch - two people have been working on this

  def test_while_loop
    $i = 1
    $counter = 5
    while $i < $counter do
      assert_equal ($i >= 0), true
      assert_equal ($i < $counter), true
      $i += 1
    end
  end

  def test_begin_loop
    $i = 6
    $counter = 5
    begin
      $i += 1
    end while $i < $counter
    assert_equal $i, 7

  end

  def test_for_loop
    $counter = 0
    for i in 0..5
      $counter += i
    end
    assert_equal $counter, 15
  end

  def test_for_break_loop
    $counter = 0
    for i in 0..5
      $counter += i
      if $counter >= 6 then
        break;
      end
    end
    assert_equal $counter, 6
  end

  def test_each_loop
    $counter = 0
    (0..5).each do |i|
      $counter += i
    end
    assert_equal $counter, 15
  end

end
