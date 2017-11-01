30.times do 
  student = Student.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "#{Faker::Color.color_name}.#{Faker::Beer.hop.downcase.delete(' ')}@gmail.com",
    phone_number: Faker::PhoneNumber.phone_number,
    bio: Faker::Company.bs,
    photo: Faker::LoremPixel.image)  


  student.update(
    linkedin_url: "linkedin.com/in/#{student.first_name[0].downcase}#{student.last_name.downcase}",
    twitter_handle: "@#{Faker::Hipster.word}_#{student.first_name.downcase}",
    personal_website: "#{student.first_name.downcase}#{Faker::Ancient.god.downcase}.com")


  student.update(
     resume_url: "#{student.personal_website}/resume",
     github_url: "github.com/#{student.twitter_handle}",
     password: student.first_name)
  student.save
end

# DUMMY STUDENT FOR LOGIN PURPOSES
student = Student.new(
    email: "1",
    password: "1") 

x = 1
30.times do 
    Skill.create(
        skill_name: Faker::Job.key_skill,
        student_id: x)  
    x = x + 1  
end

y=1
30.times do 
    count = 1
    Capstone.create(
        capstone_name: Faker::Company.name,
        description: Faker::Lorem.paragraph,
        capstone_url: Faker::Company.name.gsub(/[\s,]/ ,"") + ".com",
        screenshot: Faker::LoremPixel.image,
        student_id: y)
    y = y + 1
end
 
a = 1
30.times do
  Experience.create(
    start_date: Faker::Date.between(2.years.ago, 30.days.ago),
    end_date: Faker::Date.between(30.days.ago, Date.today),
    job_title: Faker::Job.title,
    company_name: Faker::Company.name,
    details: Faker::Job.key_skill,
    student_id: a)
  a = a + 1
end

b = 1
30.times do
  Education.create(
    start_date: Faker::Date.between(9.years.ago, 5.years.ago),
    end_date: Faker::Date.between(5.years.ago, 30.days.ago),
    degree: Faker::Educator.course,
    university_name: Faker::Educator.university,
    details: Faker::Lorem.sentences,
    student_id: b)
  b = b + 1
end