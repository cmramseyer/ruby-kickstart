# Write a method that takes a string and returns a hash
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}

def word_count(str)
  return {} if str == ""
  words = str.scan(/\w+/).map(&:downcase)
  results = {}
  words.each do |word|
    results[word] ||= words.count(word)
  end
  results
end