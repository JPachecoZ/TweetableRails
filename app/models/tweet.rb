class Tweet < ApplicationRecord
  # Validations

  validates :body, presence: true, length: { maximum: 140 }

  # Associations

  belongs_to :user
  has_many :comments, dependent: :destroy
  
end
