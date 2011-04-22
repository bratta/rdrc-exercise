$:.unshift "#{File.dirname(__FILE__)}"

require 'rubygems'
require 'bundler/setup'
require 'sinatra'

require 'stratego'

run Stratego
