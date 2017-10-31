class Student < ApplicationRecord
  has_secure_password
  has_many :capstones
  has_many :educations
  has_many :experiences
  has_many :skills
end
