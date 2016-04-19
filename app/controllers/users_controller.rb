post '/users/login' do
  @user = User.find_by(username: params[:username])
  erb :'users/show'
end

get '/users/new' do
  erb :'users/new'
end

get '/users/:id' do
  required_logged_in
    @user = User.find_by(id: params[:id])
  if @user && session[:user_id] == @user.id
    # @stat = []
    # @user.rounds.each do |round|
    #   @stat << round.stats(round.deck)
    # end

    erb :'users/show'
  else
    @message = "You must log in to see this page"
    erb :'/login'
  end
end

post '/users/new' do
  @user = User.new(params)
  if @user.save
    redirect '/login'
  else
    @errors = @user.errors.full_messages
    erb :'users/errors'
  end
end

delete '/users' do
  @user = User.find_by(id: session[:user_id])
  @user.destroy
  redirect '/'
end


