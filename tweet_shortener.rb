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

def selective_tweet_shortener(long_tweet)
  if long_tweet.length > 140
    word_substituter(long_tweet)
  else
    long_tweet
  end
end

def shortened_tweet_truncator(longer_tweet)
  if word_substituter(longer_tweet).length > 140
    word_substituter(longer_tweet)[0..134] + "(...)"
  else
    word_substituter(longer_tweet)
  end
end
