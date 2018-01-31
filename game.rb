class Game

  def initialize(player,hiddenword)
    @player = player
    @hiddenword = hiddenword
    @guessed_letters = []
  end

  def check_length_of_guessed_letters_array
    @guessed_letters.count()
  end

  def record_guessed_letter(letter)
    @guessed_letters << letter
  end

  def subtract_life_from_player
    @player.lives -= 1
  end

  def player_guess(letter)
    record_guessed_letter(letter)
    if @hiddenword.does_word_contain_letter(letter)
      @hiddenword.letter_reveal(@guessed_letters)
    else
      subtract_life_from_player()
    end
  end

  def count_remaining_astericks(revealed_string)
    return revealed_string.count("*")
  end

end
