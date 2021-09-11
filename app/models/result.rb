class Result < ApplicationRecord
  belongs_to :user

  validates :writing_score, presence: true, numericality: { only_decimal: true }
  validates :speaking_score, presence: true, numericality: { only_decimal: true }
  validates :reading_score, presence: true, numericality: { only_decimal: true }
  validates :listening_score, presence: true, numericality: { only_decimal: true }
  validates :overall_score, presence: true, numericality: { only_decimal: true }
end
