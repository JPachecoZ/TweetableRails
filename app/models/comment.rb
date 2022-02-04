class Comment < ApplicationRecord
  # Validations

  validates :body, null: false, limit: 140

  # Associations
  belongs_to :commentable, polymorphic: true
  
end
