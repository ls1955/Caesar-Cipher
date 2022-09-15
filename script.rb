def lowercase_letter?(char)
    char.ord.between?(97, 122)
end

def uppercase_letter?(char)
    char.ord.between?(65, 90)
end

def caesar_cipher(string, shift_factor)
    lowercase_shifted_letters = ('a'..'z').to_a.rotate(shift_factor)
    uppercase_shifted_letters = ('A'..'Z').to_a.rotate(shift_factor)

    result = string.split("").map do |letter|
        if lowercase_letter?(letter)
            index = letter.ord - 97
            letter = lowercase_shifted_letters[index]
        elsif uppercase_letter?(letter)
            index = letter.ord - 65
            letter = uppercase_shifted_letters[index]
        else
            letter
        end
    end
    
    result.join
end

