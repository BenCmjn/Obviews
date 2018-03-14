class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  FRENCH_PHONE_REGEX = ^(0|\+33)[1-9]([-. ]?[0-9]{2}){4}$
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }

  validates :firstname, presence: true, length: { in: 2..50 }
  validates :lastname, presence: true, length: { in: 2..50 }

  validates :bio, presence: true

  validates :phone, presence: true, format: { with: FRENCH_PHONE_REGEX } 
end
