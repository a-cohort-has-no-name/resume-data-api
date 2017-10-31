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

30.times do 
  student = Student.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "#{Faker::Color.color_name}.#{Faker::Beer.hop.downcase.delete(' ')}@gmail.com",
    phone_number: Faker::PhoneNumber.phone_number,
    bio: Faker::Company.bs,
    photo: Faker::LoremPixel.image
    )

  student.update(
    linkedin_url: "linkedin.com/in/#{student.first_name[0].downcase}#{student.last_name.downcase}",
    twitter_handle: "@#{Faker::Hipster.word}_#{student.first_name.downcase}",
    personal_website: "#{student.first_name.downcase}#{Faker::Ancient.god.downcase}.com")
  student.update(
     resume_url: "#{student.personal_website}/resume",
     github_url: "github.com/#{student.twitter_handle}")
  student.save
end