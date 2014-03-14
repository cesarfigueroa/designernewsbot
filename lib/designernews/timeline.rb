module DesignerNews
  class Timeline
    def self.most_recent
      $twitter.user_timeline(:count => 1).first
    end
  end
end
