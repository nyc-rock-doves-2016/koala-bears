post '/users/login' do
  @user = User.find_by(username: params[:username])
  erb :'users/show'
end

get '/users/new' do
  erb :'users/new'
end

get '/users/:id' do
  @user = User.find_by(id: params[:id])
  erb :'users/show'
end

post '/users/new' do
  @user = User.create(params)
  if @user.save
    redirect '/login'
  else
    @errors = @user.errors.full_messages
    erb :'users/errors'
  end
end


