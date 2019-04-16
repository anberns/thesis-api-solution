class Appointment < ApplicationRecord
  belongs_to :schedule

  validates :start_time, presence: true
  validates :end_time, presence: true
  validate :correct_times?

  def correct_times?
    if start_time >= end_time
      errors.add(:end_time, "end time must be after start time")
    end
  end

      
end
