module DesignerNews
  class Story
    include StoryFormatter

    attr_reader :title, :comment, :vote_count, :badge

    def initialize(hash)
      ['title', 'comment', 'url', 'badge', 'vote_count', 'created_at'].each do |key|
        instance_variable_set("@#{key}", hash.fetch(key))
      end
    end

    def new?
      created_at = DateTime.parse(@created_at).new_offset('-7').to_time
      created_at > Timeline.most_recent.created_at
    end

    def url
      @url.gsub(/api-/, '')
    end

    def title_with_badge
      return title if type.nil?
      ["[#{type}]", title].join(' ').strip
    end

    def type
      case badge
      when nil then nil
      when 'css' then 'CSS'
      else badge.capitalize
      end
    end
  end
end
