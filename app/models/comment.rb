class Comment < ApplicationRecord
  # Validations

  validates :body, presence: true, limit: 140

  # Associations
  belongs_to :commentable, polymorphic: true
  
end
