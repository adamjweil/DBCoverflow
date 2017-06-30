get '/login' do
  erb :'user/login'
end

get '/register' do
  erb :'user/register'
end

post '/register' do
  create_user
  redirect '/questions'
end


post '/sessions' do
  @user = User.find_by(email: params[:user_information][:email])
  if @user && @user.password == params[:user_information][:password]
    session[:user_id] = @user.id
    redirect '/questions'
  else
    "Login Attempt Failed"
  end
end

get '/logout' do
  @user = nil
end
