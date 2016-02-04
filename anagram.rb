require_relative 'reverse_letters'

def find_anagram(word)
  
  # Converts string to array of letters
  letters = word.split(//)

  # Creates array to store anagrams of word
  anagram_array = []

  # Loops through array of letters, letter-by-letter
  letters.each do |letter|
    # Selects the remaining characters
    remaining = letters.select { |l| l != letter}

    # Creates an anagram by combining the letter and the remaining characters, then adds to anagram array
    anagram_array << letter + remaining.join('')

   # Creates a new anagram by combining the letter and the reverse of the remaining characters, then adds to anagram array
    anagram_array << letter + reverse_letters(remaining).join('')
end
 
  # Returns anagram array
  anagram_array

end
