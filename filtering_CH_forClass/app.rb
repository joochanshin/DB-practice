require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:myFirstDB.sqlite3"

require './models'


get '/' do
	@users = User.all
	#puts  @users
	erb :index
end

post '/new_user' do
  	User.create(name: params[:name], location: params[:location], age: params[:age])

	redirect '/'
end

get '/location' do
  	result = User.select do |hash|
 		hash[:location].downcase == params[:location].downcase
	end

	puts result
	@new_users = result
	@users = User.all
	
	erb :new

	#redirect '/'
end


