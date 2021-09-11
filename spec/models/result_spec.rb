require 'rails_helper'

RSpec.describe Result, type: :model do
  it { should belong_to(:user) }
  it { should validate_presence_of(:writing_score) }
  it { should validate_numericality_of(:writing_score) }
  it { should validate_presence_of(:speaking_score) }
  it { should validate_numericality_of(:speaking_score) }
  it { should validate_presence_of(:reading_score) }
  it { should validate_numericality_of(:reading_score) }
  it { should validate_presence_of(:listening_score) }
  it { should validate_numericality_of(:listening_score) }
  it { should validate_presence_of(:overall_score) }
  it { should validate_numericality_of(:overall_score) }
end
