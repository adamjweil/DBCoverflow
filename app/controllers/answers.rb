get '/answers/:id' do
  @question = Question.find(params[:id])
  erb :'answers/show'
end