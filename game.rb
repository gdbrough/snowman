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

end
