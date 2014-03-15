module DesignerNews
  module StoryFormatter
    SHORT_URL_LENGTH_HTTPS = 23
    WHITESPACE = 2
    MAX_TWEET_LENGTH = 140 - SHORT_URL_LENGTH_HTTPS - WHITESPACE

    def tweet
      [title_with_badge.truncate(MAX_TWEET_LENGTH), url].join(' ')
    end

    def title_with_badge
      if badge
        [title.strip, hashtag].join(' ')
      else
        title.strip
      end
    end

    def hashtag
      badge.sub('_', '').prepend('#')
    end
  end
end
