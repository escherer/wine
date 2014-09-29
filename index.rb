require 'sinatra'
require 'mandrill'

get '/' do
	erb :landing
end

get '/home' do
	erb :home
end

get '/gallery' do
	erb :gallery
end

get '/contact' do
	erb :contact
end

get '/about' do
	erb :about
end

post '/confirmation' do

	# m = Mandrill::API.new

	# message = {

	# 	:subject=> "Shady Grove Vineyard", 
	# 	:from_name=> params["username"], 

	# 	:text=>params["message"], 

	# 	:to=>[ 

	# 		{ 
	# 	 		:email=> "frnkyn71790@gmail.com", 
	# 	 		:name=> "Franky" 
	# 		} 

	# 	], 

	# 	:html=>"<html><h1>Hi <strong>message</strong>, how are you?</h1></html>", 
	# 	:from_email=>params["email"] 

	# } 

	# sending = m.messages.send message 

	# puts sending

	erb :confirmation
end