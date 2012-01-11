require 'test/unit'

class TestSomeThings < Test::Unit::TestCase
  
  def test_string
    assert "bob"
  end

  def test_bang_method
    my_string = "codemash"

    assert my_string, "codemash"

    assert my_string.upcase, "CODEMASH"

    assert my_string, "codemash"

    my_string.upcase!

    assert my_string, "CODEMASH"
  end

  def test_question_mark_method
    is_dir = File.directory? "."
    assert is_dir
  end

end
