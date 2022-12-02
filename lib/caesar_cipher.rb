# frozen_string_literal: false

def lowercase_char?(char)
  char.ord.between?(97, 122)
end

def uppercase_char?(char)
  char.ord.between?(65, 90)
end

def caesar_cipher(string, shift_factor)
  lowercase_shifted_letters = ('a'..'z').to_a.rotate(shift_factor)
  uppercase_shifted_letters = ('A'..'Z').to_a.rotate(shift_factor)

  result = string.chars.map do |char|
    if lowercase_char?(char)
      index = (char.ord - 97) % 26

      lowercase_shifted_letters[index]
    elsif uppercase_char?(char)
      index = (char.ord - 65) % 26

      uppercase_shifted_letters[index]
    else
      char
    end
  end

  result.join
end
