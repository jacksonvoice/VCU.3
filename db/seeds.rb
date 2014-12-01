# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email: "jacksonvoice@yahoo.com", password: "password", password_confirmation: "password", role: 99)
User.create(email: "user2@email.com",  password: "password", password_confirmation: "password", role: 1)

Course.create(name: "Course 1")

Section.create(name: "Section 1", course_id: 1)
Section.create(name: "Section 2", course_id: 1)

Video.create(name: "Grenade", section_id: 1, domain: "s1z2h1gncb2o9s", f_name: "Grenade.flv")

Video.create(name: "I won't give up", section_id: 1, domain: "s1z2h1gncb2o9s", f_name: "	I Won't Give Up.flv")

Video.create(name: "Viva la vida", section_id: 2, domain: "s1z2h1gncb2o9s", f_name: "Viva La Vida.flv")

Video.create(name: "Someone like you", section_id: 2, domain: "s1z2h1gncb2o9s", f_name: "Someone Like You.flv")