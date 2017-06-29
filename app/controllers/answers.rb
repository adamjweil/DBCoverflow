get '/answers/:id' do
  @question = Question.find(params[:id])
  @answers = @question.answers.all
  erb :'answers/show'
end