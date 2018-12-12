require 'sinatra'
require './lib/palabraSecreta.rb'

get '/' do
  
  erb :main  
    
end
post '/jugar' do
  palabra  = params[:palabraSecreta]
  @palabraS = PalabraSecreta.new(palabra)
  erb :jugar
end

post '/jugarRecarga' do
  letra  = params[:letra]
  @palabraS.jsjdh(letra)
  erb :jugar
end