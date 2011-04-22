require 'rubygems'
require 'bundler/setup'

require 'sinatra/base'
require 'haml'

class Stratego < Sinatra::Base
  get '/' do
    haml :index
  end
end
