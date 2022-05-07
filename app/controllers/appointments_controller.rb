class AppointmentsController < ApplicationController
    def index
        @appointments = Appointment.all
    end
    def show
        @appointment=Appointment.find(params[:id])
    end

    def new
        @appointment = Appointment.new
    end
    def create
        @appointment = Appointment.new(return_param)
        if @appointment.save!
            redirect_to appointments_path
        end
    end
    private
    def return_param
        params.require(:appointment).permit(:appointment_date,:physician_id,:patient_id)
    end
end