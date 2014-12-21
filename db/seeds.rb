# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email: "admin@email.com", password: "password", password_confirmation: "password", role: 99)
User.create(email: "user@email.com",  password: "password", password_confirmation: "password", role: 1)


Course.create(name: "Pedagogy Part 1", description: "In this course coaches will learn the theory and science behind teaching singing lessons.  Aside from scales and sounds, there is much more that goes into being an effective vocal coach.")
Course.create(name: "Pedagogy Part 2", description: "Continuing with part 1 this class teaches how to use pedagogy in a lesson, to build a lesson plan, implement exercises, and choose songs in order to create effective teaching.")
Course.create(name: "Teaching Lessons", description: "In this course coaches will learn how to interact with different types of students in order to be a great coach and successful mentor to their students.  This creates a lasting relationship that helps to retain great students for many years ensuring their continued progress.")


Section.create(name: "Introduction to the class", course_id: 1, description: "Introduction to the class, whats coaches need to be successful as well as what will be covered throughout the course.")
Section.create(name: "Learn to play the piano", course_id: 1, description: "Playing the piano is one of the most valuable skills when being a vocal coach.  In this series coaches will be introduced to the piano and the octave and a half scale that is used extensively during lessons.")
Section.create(name: "Introduction to the class", course_id: 2, description: "Introduction to the class, whats coaches need to be successful as well as what will be covered throughout the course.")
Section.create(name: "Building exercises", course_id: 2, description: "Exercises are a culmination of the different tools coaches have at their disposal.  In this section you will learn to use vowels, consonants, scale patterns, and sounds to form the foundation of the different exercises used in lessons.")

#pedagogy part 1 section 1 seeds

Video.create(name: "Grenade", section_id: 1, domain: "s1z2h1gncb2o9s", f_name: "Grenade.flv")

Video.create(name: "I won't give up", section_id: 1, domain: "s1z2h1gncb2o9s", f_name: "	I Won't Give Up.flv")

Video.create(name: "Don't Let Go", section_id: 1, domain: "s1z2h1gncb2o9s", f_name: "Grenade.flv")

Video.create(name: "Trumpets", section_id: 1, domain: "s1z2h1gncb2o9s", f_name: "	I Won't Give Up.flv")



Video.create(name: "Viva la vida", section_id: 2, domain: "s1z2h1gncb2o9s", f_name: "Viva La Vida.flv")

Video.create(name: "Someone like you", section_id: 2, domain: "s1z2h1gncb2o9s", f_name: "Someone Like You.flv")

Video.create(name: "Somebody to Love", section_id: 2, domain: "s1z2h1gncb2o9s", f_name: "Viva La Vida.flv")

Video.create(name: "Rewind", section_id: 2, domain: "s1z2h1gncb2o9s", f_name: "Someone Like You.flv")



Video.create(name: "On The Water", section_id: 3, domain: "s1z2h1gncb2o9s", f_name: "Grenade.flv")

Video.create(name: "Animals", section_id: 3, domain: "s1z2h1gncb2o9s", f_name: "	I Won't Give Up.flv")

Video.create(name: "Let it Go", section_id: 3, domain: "s1z2h1gncb2o9s", f_name: "Grenade.flv")

Video.create(name: "The A Team", section_id: 3, domain: "s1z2h1gncb2o9s", f_name: "I Won't Give Up.flv")


Quiz.create(name: "Quiz One", video_id: 1)

Quiz.create(name: "Quiz two", video_id: 2)

Quiz.create(name: "Quiz three", video_id: 3)

Quiz.create(name: "Quiz four", video_id: 4)


Question.create(quiz_id: 1, content: "What is up with Bruno Mars hair?")
Question.create(quiz_id: 1, content: "How do you say the possesive form of Burno Mars?")
Question.create(quiz_id: 1, content: "Does Bruno Mars think he is James Brown?")
Question.create(quiz_id: 1, content: "How short is Bruno Mars?")


Question.create(quiz_id: 2, content: "What is up with Bruno Mars hair?")
Question.create(quiz_id: 2, content: "How do you say the possesive form of Burno Mars?")
Question.create(quiz_id: 2, content: "Does Bruno Mars think he is James Brown?")
Question.create(quiz_id: 2, content: "How short is Bruno Mars?")


Question.create(quiz_id: 3, content: "What is up with Bruno Mars hair?")
Question.create(quiz_id: 3, content: "How do you say the possesive form of Burno Mars?")
Question.create(quiz_id: 3, content: "Does Bruno Mars think he is James Brown?")
Question.create(quiz_id: 3, content: "How short is Bruno Mars?")


Question.create(quiz_id: 4, content: "What is up with Bruno Mars hair?")
Question.create(quiz_id: 4, content: "How do you say the plural form of Burno Mars?")
Question.create(quiz_id: 4, content: "Does Bruno Mars think he is James Brown?")
Question.create(quiz_id: 4, content: "How short is Bruno Mars?")


Answer.create(question_id: 1, content: "It just keep getting bigger and bigger.", correct_answer: false)
Answer.create(question_id: 1, content: "It's big, bad and rad.", correct_answer: false)
Answer.create(question_id: 1, content: "This is the correct answer!", correct_answer: true)
Answer.create(question_id: 1, content: "One more answer goes here, but it's wrong.", correct_answer: false)


Answer.create(question_id: 2, content: "Bruno Mars's (correct answer)", correct_answer: true)
Answer.create(question_id: 2, content: "Bruno Marzses", correct_answer: false)
Answer.create(question_id: 2, content: "Bruno Marsesses", correct_answer: false)
Answer.create(question_id: 2, content: "Bruno Marssssss", correct_answer: false)


Answer.create(question_id: 3, content: "Nah, no way!", correct_answer: false)
Answer.create(question_id: 3, content: "Who is James Brown, is that like a basketball player?", correct_answer: false)
Answer.create(question_id: 3, content: "Mommmy", correct_answer: false)
Answer.create(question_id: 3, content: "Have you seen Uptown Funk? (correct answer).", correct_answer: true)


Answer.create(question_id: 4, content: "He's not short, he's tall!", correct_answer: false)
Answer.create(question_id: 4, content: "5'6\" (Correct Asnwer)." , correct_answer: true)
Answer.create(question_id: 4, content: "5'2\"", correct_answer: false)
Answer.create(question_id: 4, content: "Have you seen Uptown Funk?", correct_answer: true)


Answer.create(question_id: 5, content: "It just keep getting bigger and bigger.", correct_answer: false)
Answer.create(question_id: 5, content: "It's big, bad and rad.", correct_answer: false)
Answer.create(question_id: 5, content: "This is the correct answer!", correct_answer: true)
Answer.create(question_id: 5, content: "One more answer goes here, but it's wrong.", correct_answer: false)


Answer.create(question_id: 6, content: "Bruno Mars's (correct answer)", correct_answer: true)
Answer.create(question_id: 6, content: "Bruno Marzses", correct_answer: false)
Answer.create(question_id: 6, content: "Bruno Marsesses", correct_answer: false)
Answer.create(question_id: 6, content: "Bruno Marssssss", correct_answer: false)


Answer.create(question_id: 7, content: "Nah, no way!", correct_answer: false)
Answer.create(question_id: 7, content: "Who is James Brown, is that like a basketball player?", correct_answer: false)
Answer.create(question_id: 7, content: "Mommmy", correct_answer: false)
Answer.create(question_id: 7, content: "Have you seen Uptown Funk? (correct answer).", correct_answer: true)


Answer.create(question_id: 8, content: "He's not short, he's tall!", correct_answer: false)
Answer.create(question_id: 8, content: "5'6\" (Correct Asnwer)." , correct_answer: true)
Answer.create(question_id: 8, content: "5'2\"", correct_answer: false)
Answer.create(question_id: 8, content: "Have you seen Uptown Funk?", correct_answer: true)


Answer.create(question_id: 9, content: "It just keep getting bigger and bigger.", correct_answer: false)
Answer.create(question_id: 9, content: "It's big, bad and rad.", correct_answer: false)
Answer.create(question_id: 9, content: "This is the correct answer!", correct_answer: true)
Answer.create(question_id: 9, content: "One more answer goes here, but it's wrong.", correct_answer: false)


Answer.create(question_id: 10, content: "Bruno Mars's (correct answer)", correct_answer: true)
Answer.create(question_id: 10, content: "Bruno Marzses", correct_answer: false)
Answer.create(question_id: 10, content: "Bruno Marsesses", correct_answer: false)
Answer.create(question_id: 10, content: "Bruno Marssssss", correct_answer: false)


Answer.create(question_id: 11, content: "Nah, no way!", correct_answer: false)
Answer.create(question_id: 11, content: "Who is James Brown, is that like a basketball player?", correct_answer: false)
Answer.create(question_id: 11, content: "Mommmy", correct_answer: false)
Answer.create(question_id: 11, content: "Have you seen Uptown Funk? (correct answer).", correct_answer: true)


Answer.create(question_id: 12, content: "He's not short, he's tall!", correct_answer: false)
Answer.create(question_id: 12, content: "5'6\" (Correct Asnwer)." , correct_answer: true)
Answer.create(question_id: 12, content: "5'2\"", correct_answer: false)
Answer.create(question_id: 12, content: "Have you seen Uptown Funk?", correct_answer: true)


Answer.create(question_id: 13, content: "It just keep getting bigger and bigger.", correct_answer: false)
Answer.create(question_id: 13, content: "It's big, bad and rad.", correct_answer: false)
Answer.create(question_id: 13, content: "This is the correct answer!", correct_answer: true)
Answer.create(question_id: 13, content: "One more answer goes here, but it's wrong.", correct_answer: false)


Answer.create(question_id: 14, content: "Bruno Mars's (correct answer)", correct_answer: true)
Answer.create(question_id: 14, content: "Bruno Marzses", correct_answer: false)
Answer.create(question_id: 14, content: "Bruno Marsesses", correct_answer: false)
Answer.create(question_id: 14, content: "Bruno Marssssss", correct_answer: false)


Answer.create(question_id: 15, content: "Nah, no way!", correct_answer: false)
Answer.create(question_id: 15, content: "Who is James Brown, is that like a basketball player?", correct_answer: false)
Answer.create(question_id: 15, content: "Mommmy", correct_answer: false)
Answer.create(question_id: 15, content: "Have you seen Uptown Funk? (correct answer).", correct_answer: true)


Answer.create(question_id: 16, content: "He's not short, he's tall!", correct_answer: false)
Answer.create(question_id: 16, content: "5'6\" (Correct Asnwer)." , correct_answer: true)
Answer.create(question_id: 16, content: "5'2\"", correct_answer: false)
Answer.create(question_id: 16, content: "Have you seen Uptown Funk?", correct_answer: true)

