class User < ApplicationRecord
    has_secure_password
    
    has_many :results

    validates :name, presence: true, length: { in: 2..20 }
    validates :occupation, length: { in: 2..20 }
    validates :email, length: { in: 2..30 }
    validates :age, numericality: { only_integer: true }
end
