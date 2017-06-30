get '/questions' do
  @questions = Question.all
  erb :'/questions/questions'
end

post '/questions/:id/upvote' do
#  if logged_in && (User.find_by(id: session[:id]).votes.all.find_by(id: params[:id]).votes == 1.abs)
#  could be different for upvote and downvote
  Vote.create(votes: 1, user_id: User.find_by(id: session[:id]).id, votable_id: Question.find_by(id: params[:id]).id, votable_type: "Question")
  redirect '/questions'
end

post '/questions/:id/downvote' do
  Vote.create(votes: -1, user_id: User.find_by(id: session[:id]).id, votable_id: Question.find_by(id: params[:id]).id, votable_type: "Question")
  redirect '/questions'
end

post '/comments/:id/upvote' do
  Vote.create(votes: -1, user_id: User.find_by(id: session[:id]).id, votable_id: Comment.find_by(id: params[:id]).id, votable_type: "Question")
  redirect '/questions'
end

post '/comments/:id/downvote' do
  Vote.create(votes: -1, user_id: User.find_by(id: session[:id]).id, votable_id: Comment.find_by(id: params[:id]).id, votable_type: "Question")
  redirect '/questions'
end

post '/answers/:id/upvote' do
  Vote.create(votes: -1, user_id: User.find_by(id: session[:id]).id, votable_id: Answer.find_by(id: params[:id]).id, votable_type: "Question")
  redirect '/questions'
end

post '/answers/:id/downvote' do
  Vote.create(votes: -1, user_id: User.find_by(id: session[:id]).id, votable_id: Answer.find_by(id: params[:id]).id, votable_type: "Question")
  redirect '/questions'
end
