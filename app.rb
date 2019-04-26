require 'sinatra/base'
require 'sinatra'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :"bookmarks/index"
  end

  get '/bookmarks/new' do
    erb :"bookmarks/new"
  end

  post '/bookmarks' do
  p "Form data submitted to the /bookmarks route!"
  p params
  Bookmark.create(url: params[:url])
  redirect '/bookmarks'
  end

  run! if app_file == $0
end
