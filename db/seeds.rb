# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

schedules = Schedule.create([
  {}, {}, {}
])

appointments = Appointment.create([
  {start_time: 1, end_time: 2, schedule_id: 1},
  {start_time: 3, end_time: 4, schedule_id: 1},
  {start_time: 2, end_time: 3, schedule_id: 2},
  {start_time: 4, end_time: 5, schedule_id: 2},
  {start_time: 3, end_time: 4, schedule_id: 3},
  {start_time: 4, end_time: 6, schedule_id: 3},

])