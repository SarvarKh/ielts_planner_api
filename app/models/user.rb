class User < ApplicationRecord
  has_secure_password

  has_many :results

  validates :name, presence: true
  validates :occupation, length: { in: 2..20 }
  validates :email, presence: true, uniqueness: true, length: { in: 2..30 }
  validates :age, numericality: { only_integer: true }
  validates :password_digest, presence: true
end
