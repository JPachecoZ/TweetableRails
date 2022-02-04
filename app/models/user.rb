class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Validations

    validates :email, presence: true, uniqueness: true
    validates :username, presence: true, uniqueness: true
    validates :name, presence: true
    validates :password, length: { minimum: 6 }

  # Associations

    has_many :tweets, dependent: :destroy
    has_many :comments, dependent: :destroy

    has_one_attached :avatar
    
    def avatar_attachment_path
      avatar.attached? ? avatar : 'default.png'
    end
end
