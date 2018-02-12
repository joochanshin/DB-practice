require 'sinatra'
require 'sinatra/activerecord'
set :database, "sqlite3:main.sqlite3"
require './models'

get '/' do
	@users = User.all
	@posts = Post.all
	erb :index
end

get '/last_user' do
	@last_user = User.last
	erb :last_user
end

get '/last_post' do
	@last_post = Post.last
	erb :last_post
end

post '/new_user' do
	User.create(name: params[:name], age: params[:age])

	redirect '/'
end

post '/new_post' do
	Post.create(title: params[:title], number: params[:number])

	redirect '/'
end