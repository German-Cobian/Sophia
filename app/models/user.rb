class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar
  has_many :articles, dependent: :destroy
  has_many :votes
  has_many :comments

  validates :username, uniqueness: { case_sensitive: false }, allow_blank: true

  enum role: %i[user admin]
  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :user
  end
end
