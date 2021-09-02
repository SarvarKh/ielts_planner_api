class User < ApplicationRecord
    has_many :results

    validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, length: { in: 2..20 }
    validates_associated :results
    validates :gender, inclusion: { in: %w(male female other),
        message: "%{value} is not a valid gender" }
    validates :occupation, length: { in: 2..20 }
    validates :email, length: { in: 2..30 }
    
    validates :age, numericality: { only_integer: true }
    validates :level_initial, numericality: { only_decimal: true }
    validates :level_current, numericality: { only_decimal: true }
    validates :level_plan, numericality: { only_decimal: true }
end
