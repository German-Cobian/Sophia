class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar
  has_many :articles, dependent: :destroy
  has_many :votes
  has_many :comments
  has_many :followings, dependent: :destroy
  has_many :following_users, through: :followings, source: :following_user # The users that user is following
  has_many :reverse_followings, foreign_key: :following_user_id, class_name: "Following"
  has_many :followers, through: :reverse_followings, source: :user
  has_many :events
  
  validates :username, uniqueness: { case_sensitive: false }, allow_blank: true
  
  before_save :set_display_name, if: -> { username.present? && display_name.blank? }

  def set_display_name
    self.display_name = username.humanize
  end

  enum role: %i[user admin]
  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :user
  end


end
