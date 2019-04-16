class AppointmentsController < ApplicationController

  def index 
    appointments = Schedule.find(params[:schedule_id]).appointments
    render json: appointments 
  end

  def create
    appointment = Appointment.create(appointment_params)
    appointment.schedule_id = params[:id]
  end

  def destroy
    Appointment.find(params[:id]).destroy 
  end

  private 
    def appointment_params
      params.permit(:schedule_id, :start_time, :end_time)
    end
end

