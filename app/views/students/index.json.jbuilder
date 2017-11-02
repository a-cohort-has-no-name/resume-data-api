json.array! @students.each do |student|
  skills = @skills.select {|skill| skill["student_id"] == student.id }
  experiences = @experiences.select {|experience| experience["student_id"] == student.id}
  capstones = @capstones.select {|capstone| capstone["student_id"] == student.id}
  education = @education.select {|education| education["student_id"] == student.id}
 
  json.partial! 'student.json.jbuilder', student: student
  json.skills skills
  json.experiences experiences
  json.education education
  json.capstones capstones
  
end








