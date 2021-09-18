FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email 'foo@bar.com'
    password 'foobar'
    level_initial 7.0
    level_plan 8.0
  end
end
