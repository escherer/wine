require 'sinatra'
require 'mandrill'

get '/' do
	erb :landing
end

get '/home' do
	@title = "Home"
	erb :home
end

get '/gallery' do
	@title = "Gallery"
	erb :gallery	
end

get '/gallery2' do
	@title = "Gallery"
	erb :gallery2	
end

get '/contact' do
	@title = "Contact Us"
	erb :contact
end

get '/about' do
	@title = "About Us"
	erb :about
end

post '/confirmation' do

	m = Mandrill::API.new

	message = {

		:subject=> "Shady Grove Vineyard", 
		:from_name=> params["username"], 

		:text=>params["message"], 

		:to=>[ 

			{ 
		 		:email=> "frnkyn71790@gmail.com", 
		 		:name=> "Franky" 
			} 

		], 

		:html=>params["message"], 
		:from_email=>params["email"] 

	} 

	sending = m.messages.send message 

	puts sending

	@title = "Confirmation"
	erb :confirmation
end