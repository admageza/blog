class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :text, presence: true, length:{ in: 1..140 }
end
