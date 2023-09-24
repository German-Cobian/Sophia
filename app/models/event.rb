class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
  has_one_attached :image

  has_many :invitations, foreign_key: 'event_id', dependent: :destroy
  has_many :attendees, through: :invitations, source: :user

end
