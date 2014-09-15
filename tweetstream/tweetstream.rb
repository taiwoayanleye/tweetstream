##Streaming
require 'tweetstream'
require 'json'
require 'highline/import'
require 'rubygems'

 TweetStream.configure { |config|
  config.consumer_key        = "dnglKPpf09bOZs251d9LJBqkc"
  config.consumer_secret      = "wAd8D1nElDx8x74cejeAWUKoV68a0EDGGL92075EipPl58IpS8"
  config.oauth_token        = "295014074-2IphEfxmXiAlM7xLrs2Ruu3wKbrYDjVASZLAfaah"
  config.oauth_token_secret = "JnT1aR5jTpBkj7ecpeZghrwDD8Ag5sdypQhMevmBpCyji"
  config.auth_method         = :oauth
}


class Tweets

	# def showTweets
	# # This will pull a sample of all tweets based on
	# # your Twitter account's Streaming API role.
	# TweetStream::Client.new.sample do |status|
	# # The status object is a special Hash with
	# # method access to its keys.
	# 	puts "#{status.text}"
	# 	end
	# end

# Use 'track' to track a list of single-word keywords
	def trackTweets(trackWord1, trackWord2, trackWord3)
		TweetStream::Client.new.track("#{trackWord1}", "#{trackWord2}", "#{trackWord3}") do |status|
		  puts "#{status.text}" 
		end
	end

	def error
		break if @trackWord1 == 'MUFC'
	end

	# def stopStream
	# # Stop after collecting 10 statuses
	# @statuses = []
	# TweetStream::Client.new.sample do |status, client|
	# 	@statuses << status
	# 	client.stop if @statuses.size >= 2
	# 	end
	# end
end



puts "To track tweets word:  Tweets.new.trackTweets('enterYourWord')"

t = Tweets.new
t.trackTweets('MUFC', 'Chelsea', 'Arsenal')