class User < ApplicationRecord
  has_many :articles
  has_many :articles, foreign_key: "provider_id"
  has_many :articles, through: :favorites, source: :user
  has_many :favorites, dependent: :destroy
  has_many :favorite_articles, through: :favorites, source: :article
   mount_uploader :image, ImageUploader
 
  validates :name,  presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_save { email.downcase! }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
