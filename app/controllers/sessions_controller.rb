get '/login' do
  @message
  erb :'login'
end

post '/login' do
  @user = User.find_by(username: params[:username])
  if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    erb :'/login'
  end
end

delete '/logout' do
  session.clear
  redirect '/login'
end
