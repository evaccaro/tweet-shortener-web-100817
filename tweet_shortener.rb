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
  "and" => "&",
  "Hello" => "Hi",
  "To" => "2",
  "Too" => "2",
  "Two" => "2",
  "For" => "4",
  "Four" => "4",
  "Be" => "B",
  "You" => "U",
  "At" => "@",
  "And" => "&"
}
end

def word_substituter(tweet_str)
shortened = []
words = dictionary.keys
tweet_str.split.each do |word|
  if(words.include?(word))
    shortened.push(dictionary[word])
  else
    shortened.push(word)
  end
end
shortened.join(" ")
end


def bulk_tweet_shortener(tweet_arr)
  tweet_arr.each do |tweet|
    puts word_substituter(tweet)
  end
end
