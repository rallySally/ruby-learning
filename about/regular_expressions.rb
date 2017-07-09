require 'minitest/autorun'

#based on: https://ruby-doc.org/core-2.2.0/Regexp.html

class RegularExpressionPlayground < Minitest::Test

	def test_for_specific_string
		assert /string/.match('this is a very long string')
		assert /string/.match('1234567890 no str1ng here') == nil
	end
	
	def test_for_numbers
		assert (/[0-9]/ =~ 'Number 42') == 7 # index of first match
		assert (/[0-9]/ =~ 'There are no numbers') == nil
	end
	
	def test_for_set_of_characters
		assert %r{[BCMW]atch}.match('Match') # %r{regex} == /regex/
		assert %r{[aAeEiIoOuU]}.match('qwrtz') == nil
	end
	
	def test_for_more_complex_stuff
		assert /[^a-z]\w\D\d[[:alpha:]]/.match('Reg3x')
		# ^ - not operator
		# \w - A word character ([a-zA-Z0-9_])
		# \D - A non-digit character ([^0-9])
		# \d - A digit character ([0-9])
		# [[:alpha:]] - Alphabetic character
		# and a lot more are possible (see website above)
	end
end