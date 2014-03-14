module DesignerNews
  module StoryType
    extend self

    def determine(story)
      self.constants.each do |name|
        story_type = const_get(name).new(story)
        return story_type if story_type.is_type?
      end

      return StoryType::Base.new(self)
    end
  end
end