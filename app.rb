require 'sinatra/base'
require 'sinatra'

class Bookmark < Sinatra::Base
  get '/' do
    erb(:index)
  end
end
