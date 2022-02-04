class Comment < ApplicationRecord
  # Validations

  validates :body, presence: true, length: { maximum: 140 }

  # Associations
  belongs_to :commentable, polymorphic: true
  
end
