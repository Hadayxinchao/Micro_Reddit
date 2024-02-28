class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, presence: true
  validates :url, length: { minimum: 5 }, allow_nil: true
  validates :body, presence: true
end
