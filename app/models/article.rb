class Article < ApplicationRecord
  belongs_to :user, :optional => true
  
  mount_uploader :image, ImageUploader
  
  has_many :feeds, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  has_many :comments, dependent: :destroy
  validates :text, presence: true, length:{ in: 1..140 }
  # validates :image, file_size: { less_than: 1.megabytes }
end
