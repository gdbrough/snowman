require('minitest/autorun')
require('minitest/rg')

require_relative('../game.rb')
require_relative('../player.rb')
require_relative('../hiddenword.rb')

class GameTest < MiniTest::Test

  def setup
    @player = Player.new("Ed", 6)
    @hiddenword = HiddenWord.new("snowman")
    @game = Game.new(@player,@hiddenword)
  end

  def test_check_length_of_guessed_letters
    assert_equal(0, @game.check_length_of_guessed_letters_array())
  end

  def test_make_a_guess
    letter = 'o'
    result = @hiddenword.does_word_contain_letter(letter)
    assert_equal(true, result)
  end

  def test_record_guessed_letter_in_array
    letter = 'o'
    @game.record_guessed_letter(letter)
    assert_equal(1, @game.check_length_of_guessed_letters_array())
  end

  def test_subtract_life_from_player
    @game.subtract_life_from_player()
    assert_equal(5, @player.lives())
  end



end
