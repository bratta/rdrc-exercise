require 'rubygems'
require 'bundler/setup'

require 'sinatra/base'
require 'haml'

class Stratego < Sinatra::Base
  get '/' do
    haml :index
  end
  
  post '/move' do
    move_from = params[:move_from]
    move_to   = params[:move_to]
    
  end
end
