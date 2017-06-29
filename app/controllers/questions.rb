get '/question' do
  @questions = Question.all
  erb :'/questions/questions'
end
