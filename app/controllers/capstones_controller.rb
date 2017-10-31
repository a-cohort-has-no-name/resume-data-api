class CapstonesController < ApplicationController
    def index
        @capstones = Capstone.all
        render "index.json.jbuilder"
    end

    def show 
        @capstone = Capstone.find(params[:id])
        render "show.json.jbuilder"
    end

    def create
        @capstone = Capstone.create(
          capstone_name: params[:capstone_name],
          description: params[:description],
          capstone_url: params[:capstone_url],
          screenshot: params[:screenshot],
          student_id: params[:student_id]
            )
        if @capstone.save
            render "show.json.jbuilder"
        else
            render json: { errors: @capstone.errors.full_messages }, status: 422
        end
    end

    def update
        @capstone = Capstone.find(params[:id])
        @capstone.update(
            capstone_capstone_url: params[:capstone_capstone_url],
            description: params[:description],
            name: params[:name],
            screenshot: params[:screenshot],
            student_id: params[:student_id]
            )
        render "show.json.jbuilder"
    end

    def destroy
        @capstone = Capstone.find(params[:id])
        @capstone.destroy
        render json: { message: 'succesfully destoryed' }
    end
end