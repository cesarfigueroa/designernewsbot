module DesignerNews
  class Timeline
    def self.most_recent
      Twitter.api.user_timeline(:count => 1).first
    end
  end
end
