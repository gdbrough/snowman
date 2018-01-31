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

  # def test_word_gets_encrypted
  #   @hiddenword.encrypt_word()
  #   assert_equal("*******", @hiddenword.encrypt_word())
  # end

end
