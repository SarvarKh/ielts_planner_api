FactoryBot.define do
  factory :result do
    title { Faker::Lorem.word }
    created_by { Faker::Number.number(10) }
    writing_score { Faker::Lorem.number(6.5) }
    speaking_score { Faker::Lorem.number(6.5) }
    reading_correct_answer { Faker::Lorem.number(33) }
    reading_score { Faker::Lorem.number(6.0) }
    listening_correct_answer { Faker::Lorem.number(35) }
    listening_score { Faker::Lorem.number(6.5) }
    overall_score { Faker::Lorem.number(6.5) }
  end
end
