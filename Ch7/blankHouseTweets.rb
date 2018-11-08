test_tweets = [
  "This president sucks!",
  "I hate this Blank House!",
  "I can't believe we're living with such a bad leadership. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad – it sucks."
  ]

banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]

filtered_tweets = []

#test_tweets.each do |tweet|
#  tweet.include?(banned_phrases)

test_array = "This president sucks!".split
filtered_array = test_array.map do |word|
  word == "sucks!" ? "CENSORED" : word
end

puts filtered_array.join(" ")
puts test_array
