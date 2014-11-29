# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email: "jacksonvoice@yahoo.com", password: "password", password_confirmation: "password", role: 99)

Course.create(name: "Course1")
Section.create(name: "Section1", course_id: 1)
Video.create(name: "Video 1", section_id: 1)