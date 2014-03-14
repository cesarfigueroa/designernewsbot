module DesignerNews
  class Story
    include StoryFormatter
    
    attr_reader :title

    def initialize(hash)
      ['title', 'url', 'created_at'].each do |key|
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
  end
end