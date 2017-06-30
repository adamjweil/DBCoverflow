get '/answers/:id' do
  @question = Question.find(params[:id])
  @answers = @question.answers.all
  erb :'answers/show'
end

get '/answers/new' do

  erb :'answers/new'
end

post '/answers' do
  @answers = Answer.new(params[:answer])
  if @answers.save
    redirect '/answers'
  else
    erb :'answers/new'
  end
end
