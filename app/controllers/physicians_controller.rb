class PhysiciansController < ApplicationController
    def index
        @physicians = Physician.all
    end
    def show
        @physician=Physician.find(params[:id])
    end
    def new
        @physician = Physician.new
    end
    def create
        @physician = Physician.new(return_param)
        if @physician.save!
            redirect_to root_path
        end
    end
    private
    def return_param
        params.require(:physician).permit(:name,:email,:unique_id)
    end
end