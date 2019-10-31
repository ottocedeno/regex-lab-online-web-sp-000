def starts_with_a_vowel?(word)
  word[0] == word.scan(/[aeiou]/i)[0]
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/un\w*ing/)
end

def words_five_letters_long(text)
  word_array = text.scan(/\w+/)
  return word_array.select { |word| word.length == 5}
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text[0] == text.scan(/[A-Z]/)[0] && (text[text.length - 1] == text[text.length - 1].scan(/[.!?]/)[0])
end

def valid_phone_number?(phone)
  phone.scan(/\d/).length == 10
end

print valid_phone_number?("234 43 9978")
