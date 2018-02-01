class HiddenWord

  attr_reader :decrypted_word

  def initialize(decrypted_word)
    @decrypted_word = decrypted_word
  end

  def get_word_length()
    @decrypted_word.length()
  end

  def create_decrypted_array()
    decrypted_array = @decrypted_word.split("")
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
    encrypted_word_array
  end

  def display_as_string(array)
    word_as_string = array.join()
  end

  def does_word_contain_letter(search_letter)
    letter_search_array = create_decrypted_array()
    for letter in letter_search_array
      return true if letter == search_letter
    end
    return false
  end

  def letter_reveal(guessed_letters_array)
    decrypted_word_array = create_decrypted_array()
    encrypted_word_array = encrypt_array()
    for guessed_letter in guessed_letters_array
      if does_word_contain_letter(guessed_letter)
        counter = 0
        for letter in decrypted_word_array
          if letter == guessed_letter
            encrypted_word_array[counter] = guessed_letter
          end
          counter += 1
        end
      end
    end
    display_as_string(encrypted_word_array)
  end

end
