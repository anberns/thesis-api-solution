class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :appointments

  has_many :appointments
end
