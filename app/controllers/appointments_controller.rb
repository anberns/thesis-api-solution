class AppointmentsController < ApplicationController

  def index 
    appointments = Schedule.find(params[:schedule_id]).appointments
    render json: appointments 
  end

  def create
    schedule = Schedule.find(params[:id])
    respond(ResponseCode::OK)
  end

  def destroy
    Appointment.find(params[:id]).destroy 
    respond(ResponseCode::OK)
  end

  private 
    def appointment_params
      params.permit(:id, :appointments [])
    end
end

