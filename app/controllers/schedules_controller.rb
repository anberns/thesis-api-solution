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
    schedule = Schedule.new(schedule_params)
    schedules = Schedule.all
    render json: schedules
  end

  def destroy
    Schedule.find(params[:id]).destroy 
    schedules = Schedule.all
    render json: schedules
  end

  private

    def schedule_params
      params.permit(:id, :appointments [])
    end
end
