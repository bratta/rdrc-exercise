require 'rubygems'
require 'bundler/setup'

require 'sinatra/base'
require 'haml'
require 'lib/cell'
require 'lib/unit'

class Stratego < Sinatra::Base
  get '/' do
    @move_from = Cell.new
    @move_to = Cell.new
    haml :index
  end
  
  post '/move' do
    @move_from = convert_to_coordinates(params[:move_from])
    @move_to   = convert_to_coordinates(params[:move_to])
    haml :index
  end
  
  def convert_to_coordinates(input_str)
    cell = Cell.new
    coordinates = input_str.match(/([0-3])([0-5])/)
    cell.x = coordinates[1]
    cell.y = coordinates[2]
    cell
  end
end
