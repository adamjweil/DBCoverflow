User.delete_all
Answer.delete_all
Question.delete_all
Comment.delete_all
Vote.delete_all

User.create(username: "test", email: "email@email.com", password: "password")

15.times do
  @users = User.create(username: Faker::Name.name, email: Faker::Internet.email, password: "password")
end

40.times do
  Question.create(question: Faker::Lorem.sentence(3), user_id: User.all.sample.id)
end

30.times do
  Answer.create(answer: Faker::Lorem.word, user_id: User.all.sample.id, question_id: Question.all.sample.id)
end

100.times do
  Comment.create(user_id: User.all.sample.id,
                  comments: Faker::Lorem.sentence(1),
                  commentable_id:  Question.all.sample.id,
                  commentable_type: "Question")
end

100.times do
  Comment.create(user_id: User.all.sample.id,
                  comments: Faker::Lorem.sentence(1),
                  commentable_id:  Question.all.sample.id,
                  commentable_type: "Answer")
end


200.times do
  Vote.create(user_id: User.all.sample.id,
              votable_id: Question.all.sample.id,
              votable_type: "Question")
end

200.times do
  Vote.create(user_id: User.all.sample.id,
              votable_id: Answer.all.sample.id,
              votable_type: "Answer")
end

200.times do
  Vote.create(user_id: User.all.sample.id,
              votable_id: Comment.all.sample.id,
              votable_type: "Comment")
end



# Question = ["How do you add CSS to webpages?", "C++ library to extract the intersection of multiple 3D geometries? Can OpenCASCADE do it?", "How can I write a rule that finds a number using integer/1?", "Large JDBC ResultSet Passed to Another thread doesn't release JVM memory"]
# user.each do |user|
#   user.question.create(question: Faker::Lorem.sentence(3))
# end
#
# Question.each do |question|
#   question.Answer.create(answer: Faker::Job.title, user_id: User.all.sample.id)
# end
