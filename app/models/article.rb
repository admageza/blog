class Article < ApplicationRecord
<<<<<<< HEAD
  belongs_to :user
=======
  belongs_to :user, :optional => true
>>>>>>> 297e12387328d626196bf50becc9f2a32b0690ed
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  has_many :comments, dependent: :destroy
  validates :text, presence: true, length:{ in: 1..140 }
end
