require 'test/unit'

class TestSomeThings < Test::Unit::TestCase
  def setup
    @the_mash = TheCodemash.new
  end

  def test_returns_a_string
    assert_equal "Codemash", @the_mash.returns_a_string 
  end

  def test_length_of_the_array
    assert_equal 3, @the_mash.the_array.length
  end

  def test_first_element_of_the_array
    #write a test to get the first element of the array

    assert_equal :welcome, @the_mash.the_array.first
  end
  
  def test_last_element_of_the_array
    #write a test to get the last element of the array

    assert_equal :codemash, @the_mash.the_array.last
  end

  def test_stringify_and_capitalize_the_array
    assert_equal ["Welcome", "To", "Codemash"], @the_mash.capitalize_the_array
  end
  
  def test_find_hash_value_by_key
    assert_equal "Rails", @the_mash.the_hash[:ruby]
  end

  def test_non_existant_hash_key_returns_nil
    assert_equal nil, @the_mash.the_hash[:visual_basic]
  end
 
end

class TheCodemash

  def returns_a_string
    #have this return a string
    "Codemash"
  end

  def the_array
    [:welcome, :to, :codemash]
  end

  def the_hash
    {:ruby => "Rails", :python => "django", :javascript => "backbone"}
  end

  def capitalize_the_array
    #fill in this method
    #with more than ["Welcome", "To", "Codemash"]
    arr = []

    self.the_array.each do |x|
      arr << x.to_s.capitalize!
    end

    arr
  end

end
