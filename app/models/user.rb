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

    validates :level_initial, inclusion: { in: %w(0.0 0.5 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8.0 8.5 9.0),
        message: "%{value} is not a valid IELTS score, please select between 0.0 and 9.0" }
    
end
