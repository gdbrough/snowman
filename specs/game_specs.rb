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

  def test_player_guess__correct
    letter = "o"
    guessed_letters_array = ["o"]
    @game.player_guess(letter)
    assert_equal(6, @player.lives)
    assert_equal(1, @game.check_length_of_guessed_letters_array())
    assert_equal("**o****", @hiddenword.letter_reveal(guessed_letters_array))
  end

  def test_player_guess__incorrect
    letter = "z"
    guessed_letters_array = ["z"]
    @game.player_guess(letter)
    assert_equal(5, @player.lives)
    assert_equal(1, @game.check_length_of_guessed_letters_array())
    assert_equal("*******", @hiddenword.letter_reveal(guessed_letters_array))
  end

  def test_count_remaining_astericks__single_letter
    guessed_letters_array = ["n"]
    revealed_string = @hiddenword.letter_reveal(guessed_letters_array)
    result = @game.count_remaining_astericks(revealed_string)
    assert_equal(5, result)
  end

  def test_count_remaining_astericks__multiple_letters
    guessed_letters_array = ["n","r","e","o"]
    revealed_string = @hiddenword.letter_reveal(guessed_letters_array)
    result = @game.count_remaining_astericks(revealed_string)
    assert_equal(4, result)
  end

  def test_games_is_won
    guessed_letters_array = ["n","s","w","o","m","a"]
    revealed_string = @hiddenword.letter_reveal(guessed_letters_array)
    result = @game.count_remaining_astericks(revealed_string)
    assert_equal(0, result)
  end

  def test_games_is_lost
    @game.player_guess('q')
    @game.player_guess('e')
    @game.player_guess('r')
    @game.player_guess('t')
    @game.player_guess('y')
    @game.player_guess('u')
    assert_equal(0, @player.lives)
  end



end
