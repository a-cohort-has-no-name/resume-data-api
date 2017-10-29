# This file should contain all the record creation needed to seed the database with its default values.
 # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
 #
 # Examples:
 #
 #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
 #   Character.create(name: 'Luke', movie: movies.first)x = 1

a = 1
30.times do
  Experience.create(
    start_date: Faker::Date.between(2.years.ago, 30.days.ago),
    end_date: Faker::Date.between(30.days.ago, Date.today),
    job_title: Faker::Job.title,
    company_name: Faker::Company.name,
    details: Faker::Job.key_skill)
  a = a + 1
end

b = 1
30.times do
  Education.create(
    start_date: Faker::Date.between(9.years.ago, 5.years.ago),
    end_date: Faker::Date.between(5.years.ago, 30.days.ago),
    degree: Faker::Educator.course,
    university_name: Faker::Educator.university,
    details: Faker::Lorem.sentences)
  b = b + 1
end