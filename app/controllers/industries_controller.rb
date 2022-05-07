class IndustriesController < ApplicationController
    def index
        @industries = Industry.all
    end
    def show
        @industry=Industry.find(params[:id])
    end
    def edit
        @industry = Industry.find(params[:id])
    end
    def update
        @industry=Industry.find(params[:id])
        if @industry.update(return_param)
             redirect_to industries_path
        end
    end
    def new
        @industry = Industry.new
    end
    def create
        @industry = Industry.new(return_param)
        if @industry.save!
            redirect_to industries_path
        end
    end
    private
    def return_param
        params.require(:industry).permit(:name,:email,:registration_number,{ sector_ids:[] })
    end
end