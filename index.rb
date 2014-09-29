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