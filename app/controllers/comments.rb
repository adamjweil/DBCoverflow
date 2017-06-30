post '/questions/:id/comments' do
  @comment = Comment.new(comments: params[:comments], commentable_type: params[:commentable_type], commentable_id: params[:id])
  if @comment.save
    redirect "/answers/#{params[:id]}"
  else
    erb :'comments/new'
  end
end


get '/questions/:id/comments/new' do
  erb :'comments/new'
end

# get '/questions/:id/comments/:id' do
#   @question = Question.find(params[:id])
#   @comments = @question.comments.all
#
#   erb :'comments/show'
# end
