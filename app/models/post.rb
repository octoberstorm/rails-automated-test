class Post < ApplicationRecord
  belongs_to :user

  class << self
    def popular_items
      self.where("created_at >= ?", 1.week.ago).limit(3)
    end
  end
end
