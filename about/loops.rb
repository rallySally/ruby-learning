require 'minitest/autorun'

class LoopPlayground < Minitest::Test

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
