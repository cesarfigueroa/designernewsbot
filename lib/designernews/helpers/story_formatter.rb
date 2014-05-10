module DesignerNews
  module StoryFormatter
    LENGTHS = {
      :tweet => 140,
      :short_url_https => 23,
      :whitespace => 3
    }.freeze

    def tweet
      [title.strip.truncate(max_length), hashtag, url].compact.join(' ')
    end

    def max_length
      if hashtag
        LENGTHS.values.inject(:-) - hashtag.length
      else
        LENGTHS.values.inject(:-)
      end
    end

    def hashtag
      if badge
        badge.sub('_', '').prepend('#')
      end
    end
  end
end
