class Comment < ApplicationRecord
  validates :body, null: false, limit: 140
end
