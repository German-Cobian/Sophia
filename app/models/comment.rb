class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :commenter, class_name: 'User', foreign_key: :user_id
  belongs_to :parent, class_name: 'Comment', optional: true

  has_many :comments, foreign_key: :parent_id

  validates_presence_of :body, length: { minimum: 3, maximum: 500 }
  
  def depth
    parent ? parent.depth + 1 : 0
  end

end
