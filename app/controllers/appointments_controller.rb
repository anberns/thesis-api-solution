class AppointmentsController < ApplicationController

  def index 
    appointments = Schedule.find(params[:schedule_id]).appointments
    render json: appointments 
  end
end
