require 'sinatra'
require 'sinatra/activerecord'
set :database, "sqlite3:main.sqlite3"
require './models'

get '/' do
	@last_blog = Blog.last
	@blogs = Blog.all
	erb :index
end

post '/new_blog' do
	Blog.create(title: params[:title], content: params[:content], category: params[:category])

	redirect '/'
end