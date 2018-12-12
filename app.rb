require 'sinatra'
require './lib/palabraSecreta.rb'

get '/' do
  
  erb :main  
    
end
post '/jugar' do
  palabra  = params[:palabraSecreta]
  erb :jugar
end