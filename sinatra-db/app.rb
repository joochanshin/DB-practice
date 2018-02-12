require 'sinatra'
require 'sinatra/activerecord'
require './models'

get '/' do
	erb :index
end