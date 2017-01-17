class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, presence: true, length: { minimum: 1, maximum: 100 },
                    uniqueness: { case_sensitive: false }
  validates :body, presence: true, length: { minimum: 1 }
  validates :user_id, presence: true
end
