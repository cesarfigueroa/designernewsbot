module DesignerNews
  module StoryType
    class Apple < Base
      def name
        "Apple"
      end

      def is_type?
        story.title =~ /(apple|i ?os|os ?x|iphone|ipad|mac)/i
      end
    end
  end
end