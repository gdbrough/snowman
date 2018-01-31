class HiddenWord

  attr_reader :decrypted_word

  def initialize(decrypted_word)
    @decrypted_word = decrypted_word
  end

  def get_word_length
    return @decrypted_word.length()
  end

  def encrypt_word()
    length_of_word = decrypted_word.length
  end

end
