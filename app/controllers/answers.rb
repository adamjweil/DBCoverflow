get '/questions/:id/answers/new' do

  erb :'answers/new'
end

post '/questions/:id/answers' do
  @answer = Answer.new(answer: params[:answer], user_id: session[:user_id], question_id: params[:id])
  if @answer.save
    redirect "/answers/#{params[:id]}"
  else
    erb :'answers/new'
  end
end

get '/answers/:id' do
  @question = Question.find(params[:id])
  @answers = @question.answers.all
  erb :'answers/show'
end
