require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session["init"] = true
  p  session[:name1] = params[:name1]
  p  session[:name2] = params[:name2]
  p  session[:name1]
  p  session[:name2]
    redirect to('/play')
  end

  get '/play' do
 p  session[:name1]
 p  session[:name2]

 p   @name1 = session[:name1]
 p   @name2 = session[:name2]
    erb(:play)
  end

end
