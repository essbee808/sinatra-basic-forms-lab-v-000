require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  
  get '/' do
    erb :index
  end
  
  get '/new' do
    erb :create_puppy
  end
  
  post '/puppy' do
    @params = params
    @puppy = Puppy.new(@params)
    erb :display_puppy  
  end
end
