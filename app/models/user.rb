class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_one_attached :avatar
  has_many :articles, dependent: :destroy
  has_many :votes

  
  validates :username, uniqueness: { case_sensitive: false }, allow_blank: true
end
