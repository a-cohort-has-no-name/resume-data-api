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