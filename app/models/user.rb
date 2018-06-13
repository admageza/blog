class User < ApplicationRecord
<<<<<<< HEAD
  has_many :articles
=======
  has_many :articles, foreign_key: "provider_id"
>>>>>>> 297e12387328d626196bf50becc9f2a32b0690ed
  has_many :favorites, dependent: :destroy
  validates :name,  presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_save { email.downcase! }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
