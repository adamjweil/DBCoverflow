get '/login' do
  erb :'user/login'
end

get '/register' do
  erb :'user/register'
end

post '/login' do
  create_user
  redirect '/questions'
end


get '/register' do
  erb :'user/register'
end
