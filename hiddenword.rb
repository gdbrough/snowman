class HiddenWord

  attr_reader :decrypted_word

  def initialize(decrypted_word)
    @decrypted_word = decrypted_word
    @decrypted_array = []
    @encrypt_array = []
  end

  def get_word_length()
    return @decrypted_word.length()
  end

  def create_decrypted_array()
    decrypted_array = @decrypted_word.split("")
    return decrypted_array
  end

  def encrypt_array()
    encrypted_word_array = create_decrypted_array()
    counter = 0
    for letter in encrypted_word_array
      if letter != " "
        encrypted_word_array[counter] = "*"
        counter += 1
      end
    end
    return encrypted_word_array
  end

  def display_as_string(array)
    word_as_string = encrypt_array().join()
    return word_as_string
  end

  def does_word_contain_letter(letter)

  end

end
