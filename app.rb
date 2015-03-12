require 'rubygems'
require 'sinatra'


get '/' do
	erb :index
end


get '/thanks' do
	erb :thanks
end
