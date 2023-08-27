def substrings(dictionary, phrase)
  substrings = Hash.new(0)
  phrase = phrase.downcase

  dictionary.each do |word|
    matches = phrase.scan(word).length
    substrings[word] = matches unless matches.zero?
  end

  substrings
end

dictionary = ["it", "is", "am", "how", "you", "work", "am"]
phrase = "This is very good. Your work is amazing. I am so proud of you"

puts substrings(dictionary, phrase)
