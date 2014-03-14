module DesignerNews
  module StoryFormatter
    SHORT_URL_LENGTH_HTTPS = 23
    WHITESPACE = 2
    MAX_TWEET_LENGTH = 140 - SHORT_URL_LENGTH_HTTPS - WHITESPACE

    def tweet
      [title.truncate(MAX_TWEET_LENGTH), url].map(&:strip).join(' ')
    end
  end
end
