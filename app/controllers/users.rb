get '/users' do
  @users = User.all
  erb :'users/show'
end

get '/users/new' do
  erb :'users/new'
end


post '/users' do
  @user = User.new(params[:user])

  if @user.save
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    redirect '/users/new'
  end
end

get '/users/login' do
  erb :'users/login'
end

put '/users' do
  @user = User.find_by(username: params[:user][:username])
  if @user && @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect = redirect "/users/#{@user.id}"
  else
    redirect '/users/login'
  end
end

get '/users/logout' do
  session.clear
  redirect '/'
end


get '/users/:id' do
  @user = User.find_by(id: params[:id])
  erb :'users/profile'
end

