require 'sinatra'
require 'sinatra/reloader'

get '/contacts' do
  erb :contacts
end

get '/a' do
  erb :a
end

post '/a' do
puts(params)
  erb :a
end

get '/b' do
  erb :b
end

get '/c' do
  erb :b
end