class Tweet < ApplicationRecord
  validates :body, null: false, limit: 140
  validates :comments_count, default: 0
end
