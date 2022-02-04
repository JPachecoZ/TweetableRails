class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Validations

    validates :email, null: false, uniqueness: true
    validates :username, null: false, uniqueness: true
    validates :name, null: false
    validates :password, length: { minimum: 6 }

  # Associations

    has_many :tweets
    has_many :comments, as: :commentable
    
end
