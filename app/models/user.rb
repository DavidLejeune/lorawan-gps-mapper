class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }
  validates :password, presence: true, length: { maximum: 50 }
  validates :password_confirmation, presence: true, length: { maximum: 50 }
end
