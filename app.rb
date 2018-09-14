require 'sinatra'
require 'require_all'
require 'pry'

class App < Sinatra::Base
  require_all './app/**/*.rb'
end
