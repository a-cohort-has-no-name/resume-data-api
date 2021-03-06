class StudentsController < ApplicationController

  #before_action :authenticate_user!

  def index
    @students = Student.all
    @skills = Skill.all
    @experiences = Experience.all
    @capstones = Capstone.all
    @education = Education.all
    render 'index.json.jbuilder'
  end

  def show
    @student = Student.find_by(id: params[:id])
    @skills = Skill.all.select {|skill| skill["student_id"] == @student.id}
    @experiences = Experience.all.select {|experience| experience["student_id"] == @student.id}
    @capstones = Capstone.all.select {|capstone| capstone["student_id"] == @student.id}
    @education = Education.all.select {|education| education["student_id"] == @student.id}
    render 'show.json.jbuilder'
  end

  def create
    @student = Student.create(
    first_name: params[:first_name],
    last_name: params[:last_name],
    email: params[:email],
    phone_number: params[:phone_number],
    bio: params[:bio],
    photo: params[:photo],
    linkedin_url: params[:linkedin_url],
    personal_website: params[:personal_website],
    resume_url: params[:resume_url],
    github_url: params[:github_url],
    password: params[:password])
    render 'show.json.jbuilder'
  end

  def update
    @student = Student.update(
    first_name: params[:first_name],
    last_name: params[:last_name],
    email: params[:email],
    phone_number: params[:phone_number],
    bio: params[:bio],
    photo: params[:photo],
    linkedin_url: params[:linkedin_url],
    personal_website: params[:personal_website],
    resume_url: params[:resume_url],
    github_url: params[:github_url],
    password: params[:password_digest])
    render 'show.json.jbuilder'
  end

  def destroy
    @student = Student.destroy(params[:id])
    render 'show.json.jbuilder'
  end

end
