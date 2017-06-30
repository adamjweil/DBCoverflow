get '/comments/:id' do
  @question = Question.find(params[:id])
  @comments = @question.comments.all

  erb :'comments/show'
end

get '/comments/new' do
  erb :'comments/new'
end

post '/comments' do
  @comment = Comment.new(params[:comment])
  if @comment.save
    redirect '/comments'
  else
    erb :'comments/new'
  end
end
