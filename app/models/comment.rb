class Comment < ApplicationRecord
  # Validations

  validates :body, presence: true, length: { maximum: 140 }

  # Associations
  belongs_to :tweets, dependent: :destroy, counter_cache: true
  belongs_to :users, dependent: :destroy
  
end
