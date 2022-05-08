class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, uniqueness: { message: 'Title have to be unique'}
  validates :title, length: { minimum: 5 }
  validates :body, presence: true
end
