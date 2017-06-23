require "minitest/autorun"

class StringsPlayground < Minitest::Test

  def test_string_reverse
    assert_equal "stressed".reverse, "desserts"
  end

  def test_strip_whitespace
    assert_equal "    moin    ".strip, "moin"
  end

  def test_to_uppercase
    assert_equal "low".upcase, "LOW"
  end

  def test_to_lowercase
    assert_equal "UP".downcase, "up"
  end

  def test_string_concat
    start = "hello"
    assert_equal start << " world", "hello world"
  end

  def test_string_length
    assert_equal "hello".length, 5
  end

end
