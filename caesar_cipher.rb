def caesar_cipher(phrase, shift)
  encrypted_phrase = ""
  alphabet = ("a".."z").to_a

  phrase.each_char do |char|
    is_upcase = char == char.upcase
    char_i = alphabet.index(char.downcase)

    # Index is nil when it's an non alphabetical character
    if char_i.nil?
      encrypted_phrase << char
    else
      encrypted_char_i = (char_i + shift) % 26 # if char_i > 26 (z) then it will loop back to 0 (a)
      encrypted_char = alphabet[encrypted_char_i]
      encrypted_char = encrypted_char.upcase if is_upcase
      encrypted_phrase << encrypted_char
    end
  end
  encrypted_phrase
end

puts caesar_cipher "!Bonjour je suis Samuel.", 1
