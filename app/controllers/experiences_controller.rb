class ExperiencesController < ApplicationController
    def index
        @experiences = Experience.all
        render "index.json.jbuilder"
    end

    def show 
        @experience = Experience.find(params[:id])
        render "show.json.jbuilder"
    end

    def create
        @experience = Experience.create(
          start_date: params[:start_date],
          end_date: params[:end_date],
          job_title: params[:job_title],
          company_name: params[:company_name],
          details: params[:details],
          student_id: params[:student_id]
            )
        if @experience.save
            render "show.json.jbuilder"
        else
            render json: { errors: @experience.errors.full_messages }, status: 422
        end
    end

    def update
        @experience = Experience.find(params[:id])
        @experience.update(
            start_date: params[:start_date],
            end_date: params[:end_date],
            job_title: params[:job_title],
            company_name: params[:company_name],
            details: params[:details],
            student_id: params[:student_id]
            )
        render "show.json.jbuilder"
    end

    def destroy
        @experience = Experience.find(params[:id])
        @experience.destroy
        render json: { message: 'succesfully destoryed' }
    end
end
