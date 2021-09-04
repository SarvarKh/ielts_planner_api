require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:results) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }
  it { should validate_presence_of(:password_digest) }
end