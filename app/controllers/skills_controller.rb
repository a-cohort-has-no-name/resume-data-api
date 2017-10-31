class SkillsController < ApplicationController
    def index
        @skills = Skill.all
        render "index.json.jbuilder"
    end

    def show 
        @skill = Skill.find(params[:id])
        render "show.json.jbuilder"
    end

    def create
        @skill = Skill.create(
          skill_name: params[:skill_name],
          student_id: params[:student_id],
            )
        if @skill.save
            render "show.json.jbuilder"
        else
            render json: { errors: @skill.errors.full_messages }, status: 422
        end
    end

    def update
        @skill = Skill.find(params[:id])
        @skill.update(
            skill_name: params[:skill_name],
            student_id: params[:student_id],
            )
        render "show.json.jbuilder"
    end

    def destroy
        @skill = Skill.find(params[:id])
        @skill.destroy
        render json: { message: 'succesfully destoryed' }
    end
end
