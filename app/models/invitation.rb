class Invitation < ApplicationRecord
  belongs_to :user
  belongs_to :event
  belongs_to :invitee, class_name: 'User'

end
