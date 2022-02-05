class Comment < ApplicationRecord
  # Validations

  validates :body, presence: true, length: { maximum: 140 }

  # Associations

  belongs_to :user
  belongs_to :tweet, counter_cache: true
  
end
