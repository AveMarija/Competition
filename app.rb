require 'rubygems'
require 'sinatra'


#get '/' do
	#erb :index
#end

get '/' do
	erb :form
end

post '/' do
	@Name = params[:InputName] 
	@Email =params[:InputEmail]
	@Age = params[:InputAge]
	@Vegetarian = params[:InputVeg]
	
	redirect '/thanks'
end

get '/thanks' do
	erb :thanks
end

get '/about' do
	erb :about
end

get '/contact' do
	erb :contact
end

get '/competition' do
	erb :competition
end