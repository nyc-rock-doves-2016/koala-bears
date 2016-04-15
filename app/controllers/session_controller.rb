get '/login' do
  erb :'login'
end

post '/sessions' do
  @user = User.find_by(username: params[:username])

  if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
  erb :'/login'
  end
end

get '/sessions/logout' do
  session.clear
  redirect '/login'
end
