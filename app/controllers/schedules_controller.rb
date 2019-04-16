class SchedulesController < ApplicationController

  def index
    schedules = Schedule.all
    render json: schedules 
  end

  def show
    schedule = Schedule.find(params[:id])
    render json: schedule 
  end

  def create
    schedule = Schedule.create()
  end

  def destroy
    Schedule.find(params[:id]).destroy 
  end

end
