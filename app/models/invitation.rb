class Invitation < ApplicationRecord
  belongs_to :user
  belongs_to :event
  belongs_to :invitee, class_name: 'User'

  scope :attended_past, -> { joins(:event).where('status = ? AND date < ?', 'approved', Time.zone.now) }
  scope :enrolled_future, -> { joins(:event).where('status = ? AND date > ?', 'approved', Time.zone.now) }
  scope :pending_accept, -> { joins(:event).where('status = ? AND date > ?', 'no response', Time.zone.now) }

end
