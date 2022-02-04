class Tweet < ApplicationRecord
  # Validations

  validates :body, presence: true, length: { maximum: 140 }

  # Associations

  belongs_to :user, dependent: :destroy
  has_many :comments, as: :commentable
  
end
