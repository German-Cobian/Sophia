class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category, class_name: 'Category', foreign_key: :category_id

  validates :title, presence: true
  validates :body, presence: true
  validates :category_id, presence: true
end
