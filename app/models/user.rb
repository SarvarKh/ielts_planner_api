class User < ApplicationRecord
  has_secure_password

  has_many :results

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, length: { in: 2..30 }
  validates :password_digest, presence: true
end
