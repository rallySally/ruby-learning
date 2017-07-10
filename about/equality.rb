require 'minitest/autorun'

class EqualPlayground < Minitest::Test

	# ==
	def test_double_equal_new
		foo = Object.new
		assert_equal foo == Object.new, false
	end
	
	def test_double_equal_same
		foo = Object.new
		assert_equal foo == foo, true
	end
	
	def test_double_equal_string
		assert_equal "foo" == "foo", true
	end
	
	def test_double_equal_number
		assert_equal 0 == 0.0, true
	end
	
	# ===
	def test_tripple_equal_new
		foo = Object.new
		assert_equal foo === Object.new, false
	end
	
	def test_tripple_equal_same
		foo = Object.new
		assert_equal foo === foo, true
	end
	
	def test_tripple_equal_string
		assert_equal "foo" === "foo", true
	end
	
	def test_tripple_equal_number
		assert_equal 0 === 0.0, true
	end
	
	# eql?
	def test_eql_equal_new
		foo = Object.new
		assert_equal  (foo.eql? Object.new), false
	end
	
	def test_eql_equal_same
		foo = Object.new
		assert_equal (foo.eql? foo), true
	end
	
	def test_eql_equal_string
		assert_equal ("foo".eql? "foo"), true
	end
	
	def test_eql_equal_number
		assert_equal (0.eql? 0.0), false
	end
	
	# equal?
	def test_equal_equal_new
		foo = Object.new
		assert_equal (foo.equal? Object.new), false
	end
	
	def test_equal_equal_same
		foo = Object.new
		assert_equal (foo.equal? foo), true
	end
	
	def test_equal_equal_string
		assert_equal ("foo".equal? "foo"), false
	end
	
	def test_equal_equal_number
		assert_equal (0.equal? 0.0), false
	end

end