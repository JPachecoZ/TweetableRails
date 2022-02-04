class Comment < ApplicationRecord
  # Validations

  validates :body, presence: true, length: { maximum: 140 }

  # Associations
  
  belongs_to :tweets, counter_cache: true
  belongs_to :users
  
end
