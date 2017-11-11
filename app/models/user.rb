class User < ApplicationRecord
  has_many :reviews, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true, length: { maximum: 50}
  
  def feed
    Review.where("user_id = ?", id)
  end
  
end
