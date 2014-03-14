module DesignerNews
  class Bot
    def self.update!
      Stories.new.recent.each do |story|
        $twitter.update(StoryFormatter.format(story)) if story.new?
      end
    end
  end
end
