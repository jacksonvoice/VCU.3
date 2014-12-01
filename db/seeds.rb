# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email: "jacksonvoice@yahoo.com", password: "password", password_confirmation: "password", role: 99)
User.create(email: "user2@email.com",  password: "password", password_confirmation: "password", role: 1)

Course.create(name: "Pedagogy", description: "In this course coaches will learn the theory and science behind teaching singing lessons.  Aside from scales and sounds, there is much more that goes into being an effective vocal coach.")
Course.create(name: "Teaching Lessons", description: "In this course coaches will learn how to interact with different types of students in order to be a great coach and succefull mentor to their stuendts.  This creates a lasting realtionship that helps to retain great students for many years ensuring their contined progress.")

Section.create(name: "Introduction to the class", course_id: 1, description: "Introdcution to the class, whats coahces need to be successful as well as what will be covered througout the course.")
Section.create(name: "Learn to play the piano", course_id: 1, description: "Playing the piano is one of the most valuable skills when being a vocal coach.  In this series coaches will be introducted to the piano and the octave and a half scale that is used extensibly during lessons.")

Video.create(name: "Grenade", section_id: 1, domain: "s1z2h1gncb2o9s", f_name: "Grenade.flv")

Video.create(name: "I won't give up", section_id: 1, domain: "s1z2h1gncb2o9s", f_name: "	I Won't Give Up.flv")

Video.create(name: "Viva la vida", section_id: 2, domain: "s1z2h1gncb2o9s", f_name: "Viva La Vida.flv")

Video.create(name: "Someone like you", section_id: 2, domain: "s1z2h1gncb2o9s", f_name: "Someone Like You.flv")