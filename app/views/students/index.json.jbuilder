# json.array! @students.each do |student|
#   json.partial! 'student.json.jbuilder', student: student
# end

# json.skill_name student.skills.skill_name
# json.student_id student.skills.student_id

json.array! @students.each do |student|
    json.id student.id
    json.first_name student.first_name
    json.last_name student.last_name
    json.email student.email
    json.phone_number student.phone_number
    json.bio student.bio
    json.linkedin_url student.linkedin_url
    json.twitter_handle student.twitter_handle
    json.personal_website student.personal_website
    json.resume_url student.resume_url
    json.github_url student.github_url
    json.photo student.photo
    json.password student.password_digest

    
    json.skills student.skills do |skill|
        json.skill_name skill.skill_name
    end
    

    json.experiences student.experiences do |experience|
        json.start_date experience.start_date
        json.end_date experience.end_date
        json.job_title experience.job_title
        json.company_name experience.company_name
        json.details experience.details
    end

    json.educations student.educations do |education|
        json.start_date education.start_date
        json.end_date education.end_date
        json.degree education.degree
        json.university_name education.university_name
        json.details education.details
    end

    json.capstones student.capstones do |capstone|
        json.capstone_name capstone.capstone_name
        json.description capstone.description
        json.capstone_url capstone.capstone_url
        json.screenshot capstone.screenshot
    end
end







# json.capstone_name student.capstones.capstone_name
# json.description student.capstones.description
# json.capstone_url student.capstones.capstone_url
# json.screenshot student.capstones.screenshot
# json.student_id student.capstones.student_id
