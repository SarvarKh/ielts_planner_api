# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

u1 = User.create!(
    name: "John Doe",
    occupation: "Developer",
    photo: "his_img",
    email: "johndoe@johndoe.com",
    password_digest: "johndoe",
    age: 23,
    gender: "male",
    level_initial: 6.5,
    level_plan: 8.0,
    due_date: Date.today+180
)

u1.results.create!(
    writing_score: 6.5,
    speaking_score: 6.5,
    reading_correct_answer: 33,
    reading_score: 6.0,
    listening_correct_answer: 35,
    listening_score: 6.5,
    passed_date: Date.today-3,
    overall_score: 6.5,
)

u1.results.create!(
    writing_score: 6.5,
    speaking_score: 7.0,
    reading_correct_answer: 34,
    reading_score: 6.5,
    listening_correct_answer: 36,
    listening_score: 7.0,
    passed_date: Date.today-2,
    overall_score: 7.0,
)

u1.results.create(
    writing_score: 7.0,
    speaking_score: 7.5,
    reading_correct_answer: 36,
    reading_score: 7.0,
    listening_correct_answer: 37,
    listening_score: 8.0,
    passed_date: Date.today-1,
    overall_score: 7.5,
)

u2 = User.create!(
    name: "Anna Doe",
    occupation: "Fitness Trainer",
    photo: "her_img",
    email: "annadoe@annadoe.com",
    password_digest: "annadoe",
    age: 22,
    gender: "female",
    level_initial: 7.0,
    level_plan: 8.0,
    due_date: Date.today+150
)

u2.results.create!(
    writing_score: 7.0,
    speaking_score: 7.0,
    reading_correct_answer: 36,
    reading_score: 7.0,
    listening_correct_answer: 37,
    listening_score: 7.0,
    passed_date: Date.today-2,
    overall_score: 7.0,
)

u2.results.create!(
    writing_score: 7.0,
    speaking_score: 7.0,
    reading_correct_answer: 36,
    reading_score: 7.5,
    listening_correct_answer: 37,
    listening_score: 7.5,
    passed_date: Date.today-1,
    overall_score: 7.5,
)
