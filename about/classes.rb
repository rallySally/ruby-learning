require 'minitest/autorun'

class ClassesPlayground < Minitest::Test

  class Car
    attr_accessor :color, :brand, :type
    def initialize
      @color = :blue
    end
  end

  def test_initialize_is_the_constructor
    c = Car.new
    assert_equal :blue, c.color
  end

end
