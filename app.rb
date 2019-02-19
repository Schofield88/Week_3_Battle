require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
  p  session[:name1] = params[:name1]
  p  session[:name2] = params[:name2]
  p  session[:name1]
  p  session[:name2]
    redirect '/play'
  end

  get '/play' do
 p  session[:name1].inspect
 p  session[:name2].inspect

 p   @name1 = 'James'
 p   @name2 = 'Luke'
    erb(:play)
  end

end
