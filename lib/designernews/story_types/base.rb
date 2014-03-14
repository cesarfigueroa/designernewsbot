module DesignerNews
  module StoryType
    autoload :Apple, 'lib/designernews/story_types/apple'

    class Base
      attr_reader :story
      
      def initialize(story)
        @story = story
      end

      def name
        ""
      end

      def is_type?
        false
      end
    end
  end
end