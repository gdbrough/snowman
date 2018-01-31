require('minitest/autorun')
require('minitest/rg')

require_relative('../hiddenword.rb')

class HiddenWordTest < MiniTest::Test

  def setup
    @hiddenword = HiddenWord.new("snowman")
  end

  def test_word_exists
    assert_equal("snowman", @hiddenword.decrypted_word)
  end

end
