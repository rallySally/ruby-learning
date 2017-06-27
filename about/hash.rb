
require "minitest/autorun"
 
 class HashesPlayground < Minitest::Test
 
  	def test_size
 	my_hash = { "name" => "Ra",
 	 "age" => 27}
    assert_equal 2,my_hash.size()
   
   end

   def test_del
   color_season = Hash.new
   color_season["summer"] = "yellow"
   color_season.clear

   assert_equal 0,color_season.size()
   end

   def test_empty
   color_season = Hash.new
   color_season["summer"] = "yellow"
   color_season.clear

   assert_equal 0,color_season.length
   end
 
 end