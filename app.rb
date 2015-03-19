require 'rubygems'
require 'sinatra'
require 'pony'


if settings.environment == :production
  # if we're on heroku, use the sendgrid settings
  require './production_pony_options'
else
  # otherwise, use our normal email account
  require './development_pony_options'
end
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
	@Vegetarian = params[:inlineRadioOptions]
	

Pony.mail(:to => @Email, :subject => "You have successfully RSVPed!", :body=>"Thanks #{@Name}! This is confirmation that you have RSVPed with the following information! Age: #{@Age} and Vegetarian Status: #{@Vegetarian}. We look forward to seeing you at the wedding!")


  erb :thanks
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