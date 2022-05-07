class PatientsController < ApplicationController
    def index
        @patients = Patient.all
    end
    def show
        @patient=Patient.find(params[:id])
    end

    def new
        @patient = Patient.new
    end
    def create
        @patient = Patient.new(return_param)
        if @patient.save!
            redirect_to root_path
        end
    end
    private
    def return_param
        params.require(:patient).permit(:name,:email)
    end
end