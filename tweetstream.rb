##Streaming
# # require 't'
require 'tweetstream'

 TweetStream.configure do |config|
  config.consumer_key        = "dnglKPpf09bOZs251d9LJBqkc"
  config.consumer_secret     = "wAd8D1nElDx8x74cejeAWUKoV68a0EDGGL92075EipPl58IpS8"
  config.oauth_token        = "295014074-2IphEfxmXiAlM7xLrs2Ruu3wKbrYDjVASZLAfaah"
  config.oauth_token_secret = "JnT1aR5jTpBkj7ecpeZghrwDD8Ag5sdypQhMevmBpCyji"
  config.auth_method         = :oauth
end

# This will pull a sample of all tweets based on
# your Twitter account's Streaming API role.
TweetStream::Client.new.sample do |status|
  # The status object is a special Hash with
  # method access to its keys.
  puts "#{status.text}"
end

# # Use 'track' to track a list of single-word keywords
# TweetStream::Client.new.track('InvictusGames') do |status|
#   puts "#{status.text}"
# end

# # Use 'follow' to follow a group of user ids (integers, not screen names)
# TweetStream::Client.new.follow(428333, 1652541, 34713362) do |status|
#   puts "#{status.text}"
# end

# # Use 'userstream' to get message from your stream
# class Tweet
# 	def readTweet
# 		client = TweetStream::Client.new

# 		client.userstream do |status|
# 			puts status.text
# 		end
# 	end
# end

# t = Tweet.new
# t.readTweet
# client = TweetStream::Client.new

# client.sitestream(['115192457'], :followings => true) do |status|
#   puts status.inspect
# end