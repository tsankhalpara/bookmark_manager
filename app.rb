require 'sinatra/base'
require 'sinatra'

class Bookmark < Sinatra::Base
  get '/' do
    erb(:index)
  end

  get '/bookmarks' do
    erb(:bookmarks)
  end

  run! if app_file == $0
end
