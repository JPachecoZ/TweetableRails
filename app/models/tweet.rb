class Tweet < ApplicationRecord
  # Validations

  validates :body, presence: true, limit: 140
  validates :comments_count, default: 0

  # Associations

  belongs_to :user
  has_many :comments, as: :commentable
  
end
