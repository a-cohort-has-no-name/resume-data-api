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