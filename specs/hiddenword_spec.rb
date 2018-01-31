require('minitest/autorun')
require('minitest/rg')

require_relative('../hiddenword.rb')

class HiddenWordTest < MiniTest::Test

  def setup
    @hiddenword = HiddenWord.new("snowman")
  end

  def test_word_exists
    assert_equal("snowman", @hiddenword.decrypted_word())
  end

  def test_length_of_word_is_returned
    assert_equal(7,@hiddenword.get_word_length())
  end

  def test_write_decrypted_word_to_array
    assert_equal(["s","n","o","w","m","a","n"], @hiddenword.create_decrypted_array())
  end

  def test_array_gets_encrypted
    @hiddenword.encrypt_array()
    assert_equal(["*","*","*","*","*","*","*"], @hiddenword.encrypt_array())
  end

  def test_word_displays_as_string
    result = @hiddenword.display_as_string(@hiddenword.encrypt_array())
    assert_equal('*******', result)
  end

  def test_does_word_contain_letter__true
    result = @hiddenword.does_word_contain_letter("n")
    assert_equal(true, result)
  end

  def test_does_word_contain_letter__false
    result = @hiddenword.does_word_contain_letter("z")
    assert_equal(false, result)
  end

end
