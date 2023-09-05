class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :commenter, class_name: 'User', foreign_key: :user_id

  validates_presence_of :body, length: { minimum: 3, maximum: 500 }
end
