def dictionary
  dictionary = {
  "hello" => "hi",
  "to" => "2",
  "too" => "2",
  "two" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end

def word_substituter(tweet_str)
shortened = []
words = dictionary.keys
tweet_str.split.each do |word|
  if(words.contains(word))
    shortened.push(dictionary[word])
  else
    shortened.push(word)
  end
end
shortened
end
