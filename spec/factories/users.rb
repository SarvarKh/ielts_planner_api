FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email 'foo@bar.com'
    password 'foobar'

    occupation 'Trainer'
    photo 'her_img'
    age 22
    gender 'female'
    level_initial 7.0
    level_plan 8.0
    due_date '2022-03-30'
  end
end
