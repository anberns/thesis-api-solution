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
    schedule = Event.new(schedule_params)
    schedules = Schedule.all
    render json: schedules
    end
  end

  private

    def schedule_params
      params.permit(:id)
    end
end
